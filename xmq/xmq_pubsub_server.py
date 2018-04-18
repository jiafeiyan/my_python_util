#-*- coding: UTF-8 -*-

import json
import zmq

from utils import Configuration, parse_conf_args, log


def start_server(context, conf):
    logger = log.get_logger(category="PubSubServer")

    logger.info("[start pubsub server with %s] begin" % (json.dumps(conf, encoding="UTF-8", ensure_ascii=False)))

    xmq_conf = context.get("xmq").get(conf.get("xmqServerId"))

    pub_addr = xmq_conf["pubAddress"]
    sub_addr = xmq_conf["subAddress"]

    context = zmq.Context(1)
    frontend = context.socket(zmq.XSUB)
    frontend.setsockopt(zmq.RCVHWM, 20000)
    frontend.setsockopt(zmq.SNDHWM, 20000)
    frontend.bind(pub_addr)

    backend = context.socket(zmq.XPUB)
    backend.setsockopt(zmq.RCVHWM, 20000)
    backend.setsockopt(zmq.SNDHWM, 20000)
    backend.bind(sub_addr)

    zmq.device(zmq.QUEUE, frontend, backend)

    frontend.close()
    backend.close()
    context.term()


def main():
    base_dir, config_names, config_files, add_ons = parse_conf_args(__file__, config_names=["xmq"])

    context, conf = Configuration.load(base_dir=base_dir, config_names=config_names, config_files=config_files)

    start_server(context, conf)


if __name__ == "__main__":
    main()
