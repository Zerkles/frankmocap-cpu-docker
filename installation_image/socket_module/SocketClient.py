import json
import os
import socket
import sys
from typing import Dict


class SocketClient:
    def __init__(self, host: str, port: int, recv_buffer_size: int = 66000):
        self.host = host
        self.port = port
        self.recv_buffer_size = recv_buffer_size
        self.soc = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        self.soc.connect((host, port))

    def send_dict(self, data: Dict) -> None:
        # dict -> json -> bytes --socket-->
        j = json.dumps(data)
        b = bytes(j, encoding='utf-8')
        print('Sending bytes:', len(b))
        self.soc.sendall(b)

    def send_str(self, msg: str):
        self.soc.sendall(bytes(msg, encoding='utf-8'))

    def receive_message(self) -> Dict:
        # --socket--> bytes -> dict
        response_bytes = self.soc.recv(self.recv_buffer_size)
        return json.loads(response_bytes.decode("utf-8"))


if __name__ == "__main__":
    c = SocketClient('127.0.0.1', 8052)
    c.send_str('acab')

    # dir_path = 'mocap'
    # for filename in os.listdir(dir_path):
    #    data = json.load(open(f'{dir_path}/{filename}'))
    #    c.send_message(data)

    # response = c.receive_message()
    # print('Received:', type(response), response)
