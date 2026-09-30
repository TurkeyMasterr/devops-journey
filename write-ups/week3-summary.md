The request lifecycle (typing a URL → seeing a page):

DNS finds the server: turns github.com into an IP like 20.233.83.145. The machine understands addresses, not names.
TCP opens a connection to that IP and confirms both sides are ready (the handshake).
TLS encrypts the connection, so the conversation happens in a private tunnel instead of out in the open.
HTTP is the conversation itself: the request (GET /) and the response (200 OK + the HTML).

DNS, TCP, and TLS are the setup. HTTP is the conversation. HTTPS = HTTP + TLS: the same conversation, just happening through the encrypted tunnel. Plain HTTP is that conversation with no TLS, out in the open.
