import json
import socket


class SocketServer:
    def __init__(self, host: str, port: int, recv_buffer_size: int = 66000):
        self.host = host
        self.port = port
        self.recv_buffer_size = recv_buffer_size

    def start(self):
        print(f"Server started at address {server.host} with port {server.port}!")
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.bind((self.host, self.port))
            s.listen()
            conn, addr = s.accept()
            with conn:
                print('Connected by', addr)
                while True:
                    msg_recv = conn.recv(self.recv_buffer_size)
                    print('Received:', msg_recv)

                    # Exit condition
                    if not msg_recv:
                        break

                    msg_send = self.logic(msg_recv)
                    print('Sending:', msg_send)
                    conn.sendall(msg_send)

    def logic(self, msg: bytes) -> bytes:
        try:
            msg_dict = json.loads(msg.decode("utf-8"))
            msg_dict['msg'] += " PONG"
            msg_bytes = bytes(json.dumps(msg_dict), encoding='utf-8')
            return msg_bytes
        except Exception:
            print("Incorrect JSON!")


if __name__ == "__main__":
    print("Server started!")
    server = SocketServer('0.0.0.0', 8052)
    server.start()
