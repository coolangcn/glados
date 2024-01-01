# GLaDOS
# GLobal Local and Destination Operating System
# Clash Config File for Mozilla/5.0 (Android 10; Mobile; rv:109.0) Gecko/111.0 Firefox/111.0-414934-21-23
# Generated at Mon Jan 01 2024 02:00:52 GMT+0000 (Coordinated Universal Time) by Aperture Science
# ░██████╗░██╗░░░░░░█████╗░██████╗░░█████╗░░██████╗
# ██╔════╝░██║░░░░░██╔══██╗██╔══██╗██╔══██╗██╔════╝
# ██║░░██╗░██║░░░░░███████║██║░░██║██║░░██║╚█████╗░
# ██║░░╚██╗██║░░░░░██╔══██║██║░░██║██║░░██║░╚═══██╗
# ╚██████╔╝███████╗██║░░██║██████╔╝╚█████╔╝██████╔╝
# ░╚═════╝░╚══════╝╚═╝░░╚═╝╚═════╝░░╚════╝░╚═════╝░
# port of HTTP
port: 7890

# port of SOCKS5
socks-port: 7891

allow-lan: false

# Rule / Global/ DIRECT (default is Rule)
mode: rule


# set log level to stdout (default is info)
# info / warning / error / debug
log-level: info

# A RESTful API for clash
external-controller: 127.0.0.1:9090

# Secret for RESTful API (Optional)
secret: ""

dns:
  enable: false # set true to enable dns (default is false)
  listen: 127.0.0.1:7053
  nameserver:
     - 119.29.29.29
     - 114.114.114.114
  fallback: # concurrent request with nameserver, fallback used when GEOIP country isn't CN
     - https://1.1.1.1/dns-query
     - tls://1.0.0.1:853


proxies:
  - name: GLaDOS-B1-01
    type: ss
    server: 2fa477b.b1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.io:67462
  - name: GLaDOS-B1-02
    type: ss
    server: 2fa477b.b2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.eu:67462
  - name: GLaDOS-B1-03
    type: ss
    server: 2fa477b.b3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.it:67462
  - name: GLaDOS-B1-04
    type: ss
    server: 2fa477b.b4.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.be:67462
  - name: GLaDOS-B1-05
    type: ss
    server: 2fa477b.b5.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.md:67462
  - name: GLaDOS-B1-06
    type: ss
    server: 2fa477b.b6.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.lt:67462
  - name: GLaDOS-B1-07
    type: ss
    server: 2fa477b.b7.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.lt:67462
  - name: GLaDOS-B1-08
    type: ss
    server: 2fa477b.b8.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.net:67462
  - name: GLaDOS-B1-09
    type: ss
    server: 2fa477b.b9.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.de:67462

  - name: GLaDOS-US-01
    type: ss
    server: 2fa477b.u1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.mozilla.net:67462
  - name: GLaDOS-US-02
    type: ss
    server: 2fa477b.u2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.ch:67462
  - name: GLaDOS-US-03
    type: ss
    server: 2fa477b.u3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.eu:67462
  - name: GLaDOS-US-04
    type: ss
    server: 2fa477b.u4.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.be:67462
  - name: GLaDOS-US-05
    type: ss
    server: 2fa477b.u5.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nvidia.com:67462
  - name: GLaDOS-US-06
    type: ss
    server: 2fa477b.u6.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.lt:67462
  - name: GLaDOS-JP-01
    type: ss
    server: 2fa477b.j1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.fastly.net:67462
  - name: GLaDOS-JP-02
    type: ss
    server: 2fa477b.j2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.be:67462
  - name: GLaDOS-JP-03
    type: ss
    server: 2fa477b.j3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.dk:67462
  - name: GLaDOS-TW-01
    type: ss
    server: 2fa477b.t1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.de:67462
  - name: GLaDOS-TW-02
    type: ss
    server: 2fa477b.t2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.jp:67462
  - name: GLaDOS-TW-03
    type: ss
    server: 2fa477b.t3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.io:67462
  - name: GLaDOS-TW-04
    type: ss
    server: 2fa477b.t4.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.net:67462
  - name: GLaDOS-TW-05
    type: ss
    server: 2fa477b.t5.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.net:67462
  - name: GLaDOS-TW-06
    type: ss
    server: 2fa477b.t6.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.is:67462
  - name: GLaDOS-SG-01
    type: ss
    server: 2fa477b.s1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.fastly.net:67462
  - name: GLaDOS-SG-02
    type: ss
    server: 2fa477b.s2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.is:67462
  - name: GLaDOS-SG-03
    type: ss
    server: 2fa477b.s3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.eu:67462
  - name: GLaDOS-HK-01
    type: ss
    server: 2fa477b.h1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.fastly.net:67462
  - name: GLaDOS-HK-02
    type: ss
    server: 2fa477b.h2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.it:67462
  - name: GLaDOS-HK-03
    type: ss
    server: 2fa477b.h3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.hu:67462
  - name: GLaDOS-UK-01
    type: ss
    server: 2fa477b.e1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.de:67462
  - name: GLaDOS-UK-02
    type: ss
    server: 2fa477b.e2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.hu:67462
  - name: GLaDOS-UK-03
    type: ss
    server: 2fa477b.e3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.cat:67462

  - name: GLaDOS-D1-01
    type: ss
    server: 2fa477b.da.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.jp:67462
  - name: GLaDOS-D1-02
    type: ss
    server: 2fa477b.db.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.ee:67462
  - name: GLaDOS-D1-03
    type: ss
    server: 2fa477b.dc.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.net:67462

  - name: GLaDOS-S1-01
    type: ss
    server: 2fa477b.f1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.io.net:67462
  - name: GLaDOS-S1-02
    type: ss
    server: 2fa477b.f2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.nintendo.jp.net:67462
  - name: GLaDOS-S1-03
    type: ss
    server: 2fa477b.f3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.com.net:67462




  - name: GLaDOS-TW-1-Netflix
    type: ss
    server: 2fa477b.d1.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.lv.net:67462
  - name: GLaDOS-TW-2-Netflix
    type: ss
    server: 2fa477b.d2.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.net.net:67462
  - name: GLaDOS-TW-3-Netflix
    type: ss
    server: 2fa477b.d3.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.lv.net:67462
  - name: GLaDOS-US-4-Netflix
    type: ss
    server: 2fa477b.d4.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.cz.net:67462
  - name: GLaDOS-US-5-Netflix
    type: ss
    server: 2fa477b.d5.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.es.net:67462
  - name: GLaDOS-US-6-Netflix
    type: ss
    server: 2fa477b.d6.glados-config.net
    port: 2377
    cipher: chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: obfs
    plugin-opts:
      mode: tls
      host: 2fa477b.dl.microsoft.is.net:67462

  - name: GLaDOS-R1-01
    type: ss
    server: 2fa477b.qa.glados-config.com
    port: 8880
    cipher:  chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: v2ray-plugin
    plugin-opts:
      mode: websocket
      tls: false
      host: endpoint.moss.network
      path: "/9daad54c-7685-402c-8a97-e6a04ec7cb11/connect"
      mux: true
      headers:
       edge: 2fa477b.fm.huawei.com:67462
  - name: GLaDOS-R1-02
    type: ss
    server: 2fa477b.qb.glados-config.com
    port: 8880
    cipher:  chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: v2ray-plugin
    plugin-opts:
      mode: websocket
      tls: false
      host: endpoint.moss.network
      path: "/9daad54c-7685-402c-8a97-e6a04ec7cb11/connect"
      mux: true
      headers:
       edge: 2fa477b.fm.huawei.com:67462
  - name: GLaDOS-R1-03
    type: ss
    server: 2fa477b.qc.glados-config.com
    port: 8880
    cipher:  chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: v2ray-plugin
    plugin-opts:
      mode: websocket
      tls: false
      host: endpoint.moss.network
      path: "/9daad54c-7685-402c-8a97-e6a04ec7cb11/connect"
      mux: true
      headers:
       edge: 2fa477b.fm.huawei.com:67462
  - name: GLaDOS-R1-04
    type: ss
    server: 2fa477b.qd.glados-config.com
    port: 8880
    cipher:  chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: v2ray-plugin
    plugin-opts:
      mode: websocket
      tls: false
      host: intrepid.moss.network
      path: "/9daad54c-7685-402c-8a97-e6a04ec7cb11/connect"
      mux: true
      headers:
       edge: 2fa477b.fm.huawei.com:67462
  - name: GLaDOS-R1-05
    type: ss
    server: 2fa477b.qe.glados-config.com
    port: 8880
    cipher:  chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: v2ray-plugin
    plugin-opts:
      mode: websocket
      tls: false
      host: intrepid.moss.network
      path: "/9daad54c-7685-402c-8a97-e6a04ec7cb11/connect"
      mux: true
      headers:
       edge: 2fa477b.fm.huawei.com:67462
  - name: GLaDOS-R1-06
    type: ss
    server: 2fa477b.qf.glados-config.com
    port: 8880
    cipher:  chacha20-ietf-poly1305
    password: "t0srmdxrm3xyjnvqz9ewlxb2myq7rjuv"
    plugin: v2ray-plugin
    plugin-opts:
      mode: websocket
      tls: false
      host: intrepid.moss.network
      path: "/9daad54c-7685-402c-8a97-e6a04ec7cb11/connect"
      mux: true
      headers:
       edge: 2fa477b.fm.huawei.com:67462

proxy-groups:
  - name: Auto-Fast
    type: "url-test"
    url: "http://www.gstatic.cn/generate_204"
    interval: 300
    tolerance: 100
    proxies:
        - GLaDOS-B1-01
        - GLaDOS-B1-02
        - GLaDOS-B1-03
        - GLaDOS-B1-04
        - GLaDOS-B1-05
        - GLaDOS-B1-06
        - GLaDOS-B1-07
        - GLaDOS-B1-08
        - GLaDOS-R1-01
        - GLaDOS-R1-02
  - name: Auto-Edge
    type: "url-test"
    url: "http://www.gstatic.cn/generate_204"
    interval: 900
    tolerance: 100
    proxies:
        - GLaDOS-B1-06
        - GLaDOS-B1-07
        - GLaDOS-B1-08
        - GLaDOS-B1-09
        - GLaDOS-R1-01
        - GLaDOS-R1-02
        - GLaDOS-R1-03
        - GLaDOS-R1-04
        - GLaDOS-R1-05
        - GLaDOS-R1-06
  - name: Auto-Failover
    type: "url-test"
    url: "http://www.gstatic.cn/generate_204"
    interval: 1800
    tolerance: 100
    proxies:
        - GLaDOS-US-01
        - GLaDOS-US-02
        - GLaDOS-US-03
        - GLaDOS-US-04
        - GLaDOS-US-05
        - GLaDOS-US-06
        - GLaDOS-JP-01
        - GLaDOS-JP-02
        - GLaDOS-JP-03
        - GLaDOS-TW-01
        - GLaDOS-TW-02
        - GLaDOS-TW-03
        - GLaDOS-TW-04
        - GLaDOS-TW-05
        - GLaDOS-TW-06
        - GLaDOS-SG-01
        - GLaDOS-SG-02
        - GLaDOS-SG-03
        - GLaDOS-HK-01
        - GLaDOS-HK-02
        - GLaDOS-HK-03
        - GLaDOS-UK-01
        - GLaDOS-UK-02
        - GLaDOS-UK-03
  - name: Express
    type: "fallback"
    url: "http://www.gstatic.cn/generate_204"
    interval: 900
    tolerance: 50
    proxies:
        - Auto-Edge
        - Auto-Fast
        - Auto-Failover
  - name: Auto
    type: "fallback"
    url: "http://www.gstatic.cn/generate_204"
    interval: 600
    proxies:
        - Auto-Fast
        - Auto-Edge
        - Auto-Failover
  - name: Proxy
    type: "select"
    proxies:
        - "Auto"
        - GLaDOS-US-01
        - GLaDOS-US-02
        - GLaDOS-US-03
        - GLaDOS-US-04
        - GLaDOS-US-05
        - GLaDOS-US-06
        - GLaDOS-JP-01
        - GLaDOS-JP-02
        - GLaDOS-JP-03
        - GLaDOS-TW-01
        - GLaDOS-TW-02
        - GLaDOS-TW-03
        - GLaDOS-TW-04
        - GLaDOS-TW-05
        - GLaDOS-TW-06
        - GLaDOS-SG-01
        - GLaDOS-SG-02
        - GLaDOS-SG-03
        - GLaDOS-HK-01
        - GLaDOS-HK-02
        - GLaDOS-HK-03
        - GLaDOS-UK-01
        - GLaDOS-UK-02
        - GLaDOS-UK-03
        - GLaDOS-D1-01
        - GLaDOS-D1-02
        - GLaDOS-D1-03
  - name: Video
    type: "select"
    interval: 900
    url: "http://www.gstatic.cn/generate_204"
    proxies:
        - Express
        - GLaDOS-US-01
        - GLaDOS-US-02
        - GLaDOS-US-03
        - GLaDOS-US-04
        - GLaDOS-US-05
        - GLaDOS-US-06
        - GLaDOS-JP-01
        - GLaDOS-JP-02
        - GLaDOS-JP-03
        - GLaDOS-TW-01
        - GLaDOS-TW-02
        - GLaDOS-TW-03
        - GLaDOS-TW-04
        - GLaDOS-TW-05
        - GLaDOS-TW-06
        - GLaDOS-SG-01
        - GLaDOS-SG-02
        - GLaDOS-SG-03
        - GLaDOS-HK-01
        - GLaDOS-HK-02
        - GLaDOS-HK-03
        - GLaDOS-UK-01
        - GLaDOS-UK-02
        - GLaDOS-UK-03
        - GLaDOS-D1-01
        - GLaDOS-D1-02
        - GLaDOS-D1-03
  - name: Netflix
    type: "select"
    url: "http://www.gstatic.cn/generate_204"
    interval: 1200
    proxies:
        - GLaDOS-TW-1-Netflix
        - GLaDOS-TW-2-Netflix
        - GLaDOS-TW-3-Netflix
        - GLaDOS-US-4-Netflix
        - GLaDOS-US-5-Netflix
        - GLaDOS-US-6-Netflix
        - Auto-Edge
        - DIRECT
  - name: Scholar
    type: "select"
    proxies:
        - GLaDOS-S1-01
        - GLaDOS-S1-02
        - GLaDOS-S1-03
        - Proxy
        - DIRECT
  - name: Steam
    type: "select"
    proxies:
        - GLaDOS-D1-01
        - GLaDOS-D1-02
        - GLaDOS-D1-03
        - Auto-Edge
        - DIRECT

rules:
#user rules

#EMAIL port
- DST-PORT,25,DIRECT
- DST-PORT,26,DIRECT
- DST-PORT,465,DIRECT
- DST-PORT,587,DIRECT
- DST-PORT,2525,DIRECT

# BT
- DST-PORT,6881,DIRECT
- DST-PORT,6882,DIRECT
- DST-PORT,6883,DIRECT
- DST-PORT,6884,DIRECT
- DST-PORT,6885,DIRECT
- DST-PORT,6886,DIRECT
- DST-PORT,6887,DIRECT
- DST-PORT,6888,DIRECT
- DST-PORT,6889,DIRECT

# check first
- DOMAIN-SUFFIX,qq.com,DIRECT
- DOMAIN-SUFFIX,taobao.com,DIRECT
- DOMAIN-SUFFIX,baidu.com,DIRECT
- DOMAIN-SUFFIX,weibo.com,DIRECT
- DOMAIN-SUFFIX,jd.com,DIRECT
- DOMAIN-SUFFIX,tmall.com,DIRECT
- DOMAIN-SUFFIX,360.cn,DIRECT
- DOMAIN-SUFFIX,zhihu.com,DIRECT
- DOMAIN-SUFFIX,com.cn,DIRECT

# allowed safe trackers
- DOMAIN,graph.instagram.com,DIRECT
- DOMAIN,www.googleadservices.com,DIRECT
- DOMAIN,control.kochava.com,DIRECT
- DOMAIN,www.google-analytics.com,DIRECT
- DOMAIN,ssl.google-analytics.com,DIRECT
- DOMAIN,nexus.officeapps.live.com,DIRECT
- DOMAIN,googleads.g.doubleclick.net,DIRECT
- DOMAIN,e.crashlytics.com,DIRECT
- DOMAIN,ib.adnxs.com,DIRECT
- DOMAIN,safebrowsing.googleapis.com,DIRECT
- DOMAIN-SUFFIX,googlesyndication.com,DIRECT
- DOMAIN-SUFFIX,googletagmanager.com,DIRECT
- DOMAIN-SUFFIX,googletagservices.com,DIRECT

#specific geo services
- DOMAIN-SUFFIX,paypal.com,Proxy
- DOMAIN-SUFFIX,stripe.com,Proxy
- DOMAIN-SUFFIX,bing.com,Proxy

##tiktok
- DOMAIN-SUFFIX,byteoversea.com,GLaDOS-US-01
- DOMAIN-SUFFIX,muscdn.com,GLaDOS-US-01
- DOMAIN-SUFFIX,musical.ly,GLaDOS-US-01
- DOMAIN-SUFFIX,tik-tokapi.com,GLaDOS-US-01
- DOMAIN-SUFFIX,tiktokcdn.com,GLaDOS-US-01
- DOMAIN-SUFFIX,tiktok.com,GLaDOS-US-01
- DOMAIN-SUFFIX,tiktokv.com,GLaDOS-US-01

#specific scholar services
- DOMAIN-KEYWORD,scholar,Scholar
- DOMAIN-SUFFIX,hotmail.com,Scholar
- DOMAIN-SUFFIX,slack.com,Scholar
- DOMAIN-SUFFIX,live.com,Scholar
- DOMAIN-SUFFIX,figma.com,Scholar
- DOMAIN-SUFFIX,firefox.com,Scholar
- DOMAIN-SUFFIX,notion.com,Scholar
- DOMAIN-SUFFIX,x.com,Scholar
- DOMAIN-SUFFIX,reddit.com,Scholar
- DOMAIN-SUFFIX,office.com,Scholar
- DOMAIN-SUFFIX,twimg.com,Scholar
- DOMAIN-SUFFIX,pinterest.com,Scholar
- DOMAIN-SUFFIX,auth0.com,Scholar
- DOMAIN-SUFFIX,oaistatic.com,Scholar
- DOMAIN-SUFFIX,oaiusercontent.com,Scholar
- DOMAIN-SUFFIX,ai.com,Scholar
- DOMAIN-SUFFIX,openai.com,Scholar
- DOMAIN,openaiapi-site.azureedge.net,Scholar
- DOMAIN-SUFFIX,rxiv.org,Scholar
- DOMAIN-SUFFIX,acrjournals.org,Scholar
- DOMAIN-SUFFIX,cademic.eb.com,Scholar
- DOMAIN-SUFFIX,caric.co.jp,Scholar
- DOMAIN-SUFFIX,clweb.org,Scholar
- DOMAIN-SUFFIX,cm.org,Scholar
- DOMAIN-SUFFIX,cs.org,Scholar
- DOMAIN-SUFFIX,gu.org,Scholar
- DOMAIN-SUFFIX,iaa.org,Scholar
- DOMAIN-SUFFIX,imsciences.org,Scholar
- DOMAIN-SUFFIX,ms.org,Scholar
- DOMAIN-SUFFIX,natomy.tv,Scholar
- DOMAIN-SUFFIX,nalytictech.com,Scholar
- DOMAIN-SUFFIX,nnualreviews.org,Scholar
- DOMAIN-SUFFIX,ps.org,Scholar
- DOMAIN-SUFFIX,rabidopsis.org,Scholar
- DOMAIN-SUFFIX,rtstor.org,Scholar
- DOMAIN-SUFFIX,scelibrary.org,Scholar
- DOMAIN-SUFFIX,sha.org,Scholar
- DOMAIN-SUFFIX,sm.org,Scholar
- DOMAIN-SUFFIX,sme.org,Scholar
- DOMAIN-SUFFIX,sminternational.org,Scholar
- DOMAIN-SUFFIX,sn-online.org,Scholar
- DOMAIN-SUFFIX,spbjournals.org,Scholar
- DOMAIN-SUFFIX,spenpublishing.com,Scholar
- DOMAIN-SUFFIX,stm.org,Scholar
- DOMAIN-SUFFIX,siam.org,Scholar

#github
- DOMAIN-KEYWORD,github,Scholar
- DOMAIN-SUFFIX,atom.io,Scholar
- DOMAIN-SUFFIX,dependabot.com,Scholar
- DOMAIN-SUFFIX,ghcr.io,Scholar
- DOMAIN-SUFFIX,git.io,Scholar
- DOMAIN-SUFFIX,myoctocat.com,Scholar
- DOMAIN-SUFFIX,npm.community,Scholar
- DOMAIN-SUFFIX,npmjs.com,Scholar
- DOMAIN-SUFFIX,npmjs.org,Scholar
- DOMAIN-SUFFIX,opensource.guide,Scholar
- DOMAIN-SUFFIX,rawgit.com,Scholar
- DOMAIN-SUFFIX,repo.new,Scholar

#discord
- DOMAIN-KEYWORD,discord,Scholar
- DOMAIN-SUFFIX,airhorn.solutions,Scholar
- DOMAIN-SUFFIX,airhornbot.com,Scholar
- DOMAIN-SUFFIX,bigbeans.solutions,Scholar
- DOMAIN-SUFFIX,dis.gd,Scholar

#dev
- DOMAIN-SUFFIX,gstatic.com,Proxy
- DOMAIN-SUFFIX,google.com,Proxy
- DOMAIN-SUFFIX,figma.com,Proxy
- DOMAIN-SUFFIX,v2ex.com,Proxy
- DOMAIN-KEYWORD,gitlab,Proxy
- DOMAIN-KEYWORD,github,Proxy
- DOMAIN-KEYWORD,npm,Proxy
- DOMAIN-KEYWORD,stackoverflow.com,Proxy
- DOMAIN-SUFFIX,techcrunch.com,Proxy
- DOMAIN-SUFFIX,go-lang.com,Proxy
- DOMAIN-SUFFIX,go-lang.net,Proxy
- DOMAIN-SUFFIX,go-lang.org,Proxy
- DOMAIN-SUFFIX,go.dev,Proxy
- DOMAIN-SUFFIX,godoc.org,Proxy
- DOMAIN-SUFFIX,golang.com,Proxy
- DOMAIN-SUFFIX,golang.net,Proxy
- DOMAIN-SUFFIX,golang.org,Proxy
- DOMAIN-SUFFIX,trello.com,Proxy
- DOMAIN-SUFFIX,techsmith.com,Proxy
- DOMAIN-SUFFIX,thepiratebay.org,Proxy

# > IQIYI
- DOMAIN-KEYWORD,qiyi,DIRECT
- DOMAIN-SUFFIX,qy.net,DIRECT
- DOMAIN-SUFFIX,letv.com,DIRECT
- DOMAIN-SUFFIX,71.am,DIRECT
- DOMAIN-SUFFIX,71edge.com,DIRECT
- DOMAIN-SUFFIX,iqiyi.com,DIRECT
- DOMAIN-SUFFIX,iqiyipic.com,DIRECT
- DOMAIN-SUFFIX,ppsimg.com,DIRECT
- DOMAIN-SUFFIX,qiyi.com,DIRECT
- DOMAIN-SUFFIX,qiyipic.com,DIRECT
- DOMAIN-SUFFIX,qy.net,DIRECT

# > NeteaseMusic
- DOMAIN-SUFFIX,163yun.com,DIRECT
- DOMAIN-SUFFIX,music.126.net,DIRECT
- DOMAIN-SUFFIX,music.163.com,DIRECT

# China CDN
- DOMAIN-SUFFIX,tnkjmec.com,DIRECT
- DOMAIN-SUFFIX,clngaa.com,DIRECT
- DOMAIN-SUFFIX,ksyna.com,DIRECT
- DOMAIN-SUFFIX,bscstorage.net,DIRECT
- DOMAIN-SUFFIX,eccdnx.com,DIRECT
- DOMAIN-SUFFIX,pinyuncloud.com,DIRECT
- DOMAIN-SUFFIX,8686c.com,DIRECT
- DOMAIN-SUFFIX,pphimalayanrt.com,DIRECT
- DOMAIN-SUFFIX,qbox.me,DIRECT
- DOMAIN-SUFFIX,qiniu.com,DIRECT
- DOMAIN-SUFFIX,qiniudn.com,DIRECT
- DOMAIN-SUFFIX,qiniup.com,DIRECT
- DOMAIN-SUFFIX,qnsdk.com,DIRECT
- DOMAIN-SUFFIX,qnssl.com,DIRECT
- DOMAIN-SUFFIX,qiniucdn.com,DIRECT
- DOMAIN-SUFFIX,qiniudns.com,DIRECT
- DOMAIN-SUFFIX,sandai.net,DIRECT

# > ByteDance
- DOMAIN-KEYWORD,toutiao,DIRECT
- DOMAIN-SUFFIX,bdxiguastatic.com,DIRECT
- DOMAIN-SUFFIX,bdurl.net,DIRECT
- DOMAIN-SUFFIX,douyinstatic.com,DIRECT
- DOMAIN-SUFFIX,douyin.com,DIRECT
- DOMAIN-SUFFIX,douyinpic.com,DIRECT
- DOMAIN-SUFFIX,douyinvod.com,DIRECT
- DOMAIN-SUFFIX,huoshan.com,DIRECT
- DOMAIN-SUFFIX,huoshanstatic.com,DIRECT
- DOMAIN-SUFFIX,huoshanzhibo.com,DIRECT
- DOMAIN-SUFFIX,ixigua.com,DIRECT
- DOMAIN-SUFFIX,ixiguavideo.com,DIRECT
- DOMAIN-SUFFIX,ixgvideo.com,DIRECT
- DOMAIN-SUFFIX,bdxiguaimg.com,DIRECT
- DOMAIN-SUFFIX,pstatp.com,DIRECT
- DOMAIN-SUFFIX,snssdk.com,DIRECT
- DOMAIN-SUFFIX,zijiecdn.com,DIRECT
- DOMAIN-SUFFIX,zijiecdn.net,DIRECT
- DOMAIN-SUFFIX,zjbyte.cn,DIRECT
- DOMAIN-SUFFIX,zjcdn.com,DIRECT
- DOMAIN-SUFFIX,bytedance.com,DIRECT
- DOMAIN-SUFFIX,bytedance.net,DIRECT
- DOMAIN-SUFFIX,bytedns.net,DIRECT
- DOMAIN-SUFFIX,byteimg.com,DIRECT
- DOMAIN-SUFFIX,feiliao.com,DIRECT
- DOMAIN-SUFFIX,gifshow.com,DIRECT
- DOMAIN-SUFFIX,huoshan.com,DIRECT
- DOMAIN-SUFFIX,iesdouyin.com,DIRECT
- DOMAIN-SUFFIX,ixigua.com,DIRECT
- DOMAIN-SUFFIX,kspkg.com,DIRECT
- DOMAIN-SUFFIX,pstatp.com,DIRECT
- DOMAIN-SUFFIX,snssdk.com,DIRECT
- DOMAIN-SUFFIX,wukong.com,DIRECT
- DOMAIN-SUFFIX,zijieimg.com,DIRECT
- DOMAIN-SUFFIX,zjbyte.com,DIRECT
- DOMAIN-SUFFIX,zjcdn.com,DIRECT

# > Bilibili
- DOMAIN-KEYWORD,bili,DIRECT
- DOMAIN-SUFFIX,acg.tv,DIRECT
- DOMAIN-SUFFIX,acgvideo.com,DIRECT
- DOMAIN-SUFFIX,b23.tv,DIRECT
- DOMAIN-SUFFIX,hdslb.com,DIRECT
- DOMAIN-SUFFIX,im9.com,DIRECT

# > Blizzard
- DOMAIN-SUFFIX,blizzard.com,DIRECT
- DOMAIN-SUFFIX,battle.net,DIRECT
- DOMAIN,blzddist1-a.akamaihd.net,DIRECT

# DIRECT
- DOMAIN-SUFFIX,digicert.com,DIRECT
- DOMAIN-SUFFIX,code.visualstudio.com,DIRECT

# CCTV
- DOMAIN-SUFFIX,cctv.com,DIRECT
- DOMAIN-SUFFIX,cctvpic.com,DIRECT
- DOMAIN-SUFFIX,livechina.com,DIRECT

# DiDi
- DOMAIN-SUFFIX,didialift.com,DIRECT
- DOMAIN-SUFFIX,didiglobal.com,DIRECT
- DOMAIN-SUFFIX,udache.com,DIRECT

# Douyu 斗鱼
- DOMAIN-SUFFIX,douyu.com,DIRECT
- DOMAIN-SUFFIX,douyu.tv,DIRECT
- DOMAIN-SUFFIX,douyuscdn.com,DIRECT
- DOMAIN-SUFFIX,douyutv.com,DIRECT

# HuaWei
- DOMAIN-SUFFIX,dbankcdn.com,DIRECT
- DOMAIN-SUFFIX,hc-cdn.com,DIRECT
- DOMAIN-SUFFIX,hicloud.com,DIRECT
- DOMAIN-SUFFIX,huawei.com,DIRECT
- DOMAIN-SUFFIX,huaweicloud.com,DIRECT
- DOMAIN-SUFFIX,huaweishop.net,DIRECT
- DOMAIN-SUFFIX,hwccpc.com,DIRECT
- DOMAIN-SUFFIX,vmall.com,DIRECT
- DOMAIN-SUFFIX,vmallres.com,DIRECT

# Iflytek
- DOMAIN-SUFFIX,iflyink.com,DIRECT
- DOMAIN-SUFFIX,iflyrec.com,DIRECT
- DOMAIN-SUFFIX,iflytek.com,DIRECT

- DOMAIN,dig.bdurl.net,DIRECT
- DOMAIN,pagead2.googlesyndication.com,DIRECT


# DIRECTEND

# STEAM CDN
- DOMAIN,csgo.wmsj.cn,Steam
- DOMAIN,dl.steam.clngaa.com,Steam
- DOMAIN,dl.steam.ksyna.com,Steam
- DOMAIN,dota2.wmsj.cn,Steam
- DOMAIN,st.dl.bscstorage.net,Steam
- DOMAIN,st.dl.eccdnx.com,Steam
- DOMAIN,st.dl.pinyuncloud.com,Steam
- DOMAIN,steampipe.steamcontent.tnkjmec.com,Steam
- DOMAIN,steampowered.com.8686c.com,Steam
- DOMAIN,steamstatic.com.8686c.com,Steam
- DOMAIN,wmsjsteam.com,Steam
- DOMAIN-SUFFIX,cm.steampowered.com,Steam
- DOMAIN-SUFFIX,steamchina.com,Steam
- DOMAIN-SUFFIX,steamcontent.com,Steam
- DOMAIN-SUFFIX,steamusercontent.com,Steam
- DOMAIN-SUFFIX,fanatical.com,Steam
- DOMAIN-SUFFIX,humblebundle.com,Steam
- DOMAIN-SUFFIX,steamcommunity.com,Steam
- DOMAIN-SUFFIX,steampowered.com,Steam
- DOMAIN-SUFFIX,steamstatic.com,Steam
- DOMAIN-SUFFIX,steam-chat.com,Steam
- DOMAIN-SUFFIX,steamusercontent.com,Steam
- DOMAIN-SUFFIX,valvesoftware.com,Steam
- DOMAIN-KEYWORD,steamuserimages,Steam
- DOMAIN-KEYWORD,steamcontent,Steam
- DOMAIN,steambroadcast.akamaized.net,Steam
- DOMAIN,steamcdn-a.akamaihd.net,Steam
- DOMAIN,steamcommunity-a.akamaihd.net,Steam
- DOMAIN,steampipe.akamaized.net,Steam
- DOMAIN,steamstore-a.akamaihd.net,Steam
- DOMAIN,steamusercontent-a.akamaihd.net,Steam
- DOMAIN,steamuserimages-a.akamaihd.net,Steam
- DOMAIN-SUFFIX,fanatical.com,Steam
- DOMAIN-SUFFIX,humblebundle.com,Steam
- DOMAIN-SUFFIX,playartifact.com,Steam
- DOMAIN-SUFFIX,steam-chat.com,Steam
- DOMAIN-SUFFIX,steamcommunity.com,Steam
- DOMAIN-SUFFIX,steamgames.com,Steam
- DOMAIN-SUFFIX,steampowered.com,Steam
- DOMAIN-SUFFIX,steamserver.net,Steam
- DOMAIN-SUFFIX,steamstat.us,Steam
- DOMAIN-SUFFIX,steamstatic.com,Steam
- DOMAIN-SUFFIX,underlords.com,Steam
- DOMAIN-SUFFIX,valvesoftware.com,Steam

# Epic
- DOMAIN-SUFFIX,epicgames.com,Steam
- DOMAIN-SUFFIX,helpshift.com,Steam
- DOMAIN-SUFFIX,paragon.com,Steam
- DOMAIN-SUFFIX,unrealengine.com,Steam
- DOMAIN-SUFFIX,ol.epicgames.com,Steam

# > Epicgames
- DOMAIN-KEYWORD,epicgames,Steam
- DOMAIN-SUFFIX,helpshift.com,Steam

# debug
- DOMAIN,ip.sb,Proxy
- DOMAIN,myip.ipip.net,Video
- DOMAIN,ifconfig.me,Netflix

# hot fix
- DOMAIN,services.googleapis.cn,Proxy
- DOMAIN,googleapis.cn,Proxy
- DOMAIN-SUFFIX,ping.pe,Proxy
- DOMAIN-SUFFIX,f2pool.com,Proxy
- DOMAIN-SUFFIX,static.wikia.nocookie.net,Proxy
- DOMAIN-SUFFIX,cc98.org,DIRECT

# common site
- DOMAIN,services.googleapis.cn,Proxy
- DOMAIN,google.com,Proxy
- DOMAIN-SUFFIX,google.cn,Proxy
- DOMAIN-SUFFIX,googleapis.cn,Proxy
- DOMAIN-KEYWORD,facebook,Proxy
- DOMAIN-SUFFIX,fb.me,Proxy
- DOMAIN-KEYWORD,gmail,Proxy
- DOMAIN-KEYWORD,twitter,Proxy
- DOMAIN-KEYWORD,instagram,Proxy
- DOMAIN-SUFFIX,twimg.com,Proxy
- DOMAIN-KEYWORD,blogspot,Proxy
- DOMAIN-KEYWORD,whatsapp,Proxy
- DOMAIN-KEYWORD,glados,Proxy
- DOMAIN-KEYWORD,wikipedia,Proxy
- DOMAIN-SUFFIX,google.com,Proxy
- DOMAIN-SUFFIX,facebook.com,Proxy
- DOMAIN-SUFFIX,yahoo.com,Proxy
- DOMAIN-SUFFIX,amazon.com,Proxy
- DOMAIN-SUFFIX,vk.com,Proxy
- DOMAIN-SUFFIX,reddit.com,Proxy
- DOMAIN-SUFFIX,live.com,Proxy
- DOMAIN-SUFFIX,zoom.us,Proxy
- DOMAIN-SUFFIX,wikipedia.org,Proxy
- DOMAIN-SUFFIX,myshopify.com,Proxy
- DOMAIN-SUFFIX,instagram.com,Proxy
- DOMAIN-SUFFIX,okezone.com,Proxy
- DOMAIN-SUFFIX,office.com,Proxy
- DOMAIN-SUFFIX,ebay.com,Proxy
- DOMAIN-SUFFIX,bongacams.com,Proxy
- DOMAIN-SUFFIX,blogspot.com,Proxy
- DOMAIN-SUFFIX,yahoo.co.jp,Proxy
- DOMAIN-SUFFIX,babytree.com,Proxy
- DOMAIN-SUFFIX,amazon.co.jp,Proxy
- DOMAIN-SUFFIX,adobe.com,Proxy
- DOMAIN-SUFFIX,livejasmin.com,Proxy
- DOMAIN-SUFFIX,stackoverflow.com,Proxy
- DOMAIN-SUFFIX,dropbox.com,Proxy
- DOMAIN-SUFFIX,msn.com,Proxy
- DOMAIN-SUFFIX,yandex.ru,Proxy
- DOMAIN-SUFFIX,linkedin.com,Proxy
- DOMAIN-SUFFIX,twitter.com,Proxy
- DOMAIN-SUFFIX,imgur.com,Proxy
- DOMAIN-SUFFIX,amazonaws.com,Proxy
- DOMAIN-SUFFIX,imdb.com,Proxy
- DOMAIN-SUFFIX,whatsapp.com,Proxy
- DOMAIN-SUFFIX,google.co.jp,Proxy
- DOMAIN-SUFFIX,wordpress.com,Proxy
- DOMAIN-SUFFIX,nytimes.com,Proxy
- DOMAIN-SUFFIX,spotify.com,Proxy

# Proxy CDN
- DOMAIN-SUFFIX,s3.amazonaws.com,Video
- DOMAIN-KEYWORD,akam,Video

# Video
- DOMAIN-KEYWORD,youtube,Video
- DOMAIN,lybmc.com,DIRECT
- DOMAIN,dayi.com,Video
- DOMAIN-SUFFIX,phncdn.com,Video
- DOMAIN-SUFFIX,phprcdn.com,Video
- DOMAIN-SUFFIX,youtu.be,Video
- DOMAIN-SUFFIX,ytimg.com,Video
- DOMAIN-KEYWORD,twitch,Video
- DOMAIN-SUFFIX,googlevideo.com,Video
- DOMAIN-SUFFIX,googleusercontent.com,Video

#Netflix
- DOMAIN-KEYWORD,netflix,Netflix
- DOMAIN-SUFFIX,netflix.com,Netflix
- DOMAIN-SUFFIX,netflix.net,Netflix
- DOMAIN-SUFFIX,nflxext.com,Netflix
- DOMAIN-SUFFIX,nflximg.com,Netflix
- DOMAIN-SUFFIX,nflximg.net,Netflix
- DOMAIN-SUFFIX,nflxso.net,Netflix
- DOMAIN-KEYWORD,dualstack.apiproxy-,Netflix
- DOMAIN-KEYWORD,dualstack.ichnaea-web-,Netflix
- DOMAIN-SUFFIX,netflix.com.edgesuite.net,Netflix
- DOMAIN-SUFFIX,us-west-2.amazonaws.com,Netflix
- DOMAIN-KEYWORD,apiproxy-device-prod-nlb-,Netflix
- DOMAIN-KEYWORD,ichnaea-web-,Netflix
- DOMAIN,netflix.com.edgesuite.net,Netflix
- DOMAIN-SUFFIX,netflix.com,Netflix
- DOMAIN-SUFFIX,netflix.net,Netflix
- DOMAIN-SUFFIX,nflxext.com,Netflix
- DOMAIN-SUFFIX,nflximg.com,Netflix
- DOMAIN-SUFFIX,nflximg.net,Netflix
- DOMAIN-SUFFIX,nflxso.net,Netflix
- DOMAIN-SUFFIX,nflxvideo.net,Netflix

# > Fox+
- DOMAIN-KEYWORD,foxplus,Netflix
- DOMAIN-SUFFIX,config.fox.com,Netflix
- DOMAIN-SUFFIX,emome.net,Netflix
- DOMAIN-SUFFIX,fox.com,Netflix
- DOMAIN-SUFFIX,foxdcg.com,Netflix
- DOMAIN-SUFFIX,foxnow.com,Netflix
- DOMAIN-SUFFIX,foxplus.com,Netflix
- DOMAIN-SUFFIX,foxplay.com,Netflix
- DOMAIN-SUFFIX,ipinfo.io,Netflix
- DOMAIN-SUFFIX,mstage.io,Netflix
- DOMAIN-SUFFIX,now.com,Netflix
- DOMAIN-SUFFIX,theplatform.com,Netflix
- DOMAIN-SUFFIX,urlload.net,Netflix

# > HBO && HBO Go
- DOMAIN-SUFFIX,hbo.com,Netflix
- DOMAIN-SUFFIX,hboasia.com,Netflix
- DOMAIN-SUFFIX,hbogo.com,Netflix
- DOMAIN-SUFFIX,hbogoasia.hk,Netflix

# > Hulu
- DOMAIN-SUFFIX,hulu.com,Netflix
- DOMAIN-SUFFIX,huluim.com,Netflix
- DOMAIN-SUFFIX,hulustream.com,Netflix

#Fast.com
- DOMAIN-SUFFIX,fast.com,Netflix
- DOMAIN-SUFFIX,oca.nflxvideo.net,Netflix
- DOMAIN-SUFFIX,nflxvideo.net,Netflix

- DOMAIN,cdn.registerdisney.go.com,Netflix
- DOMAIN-SUFFIX,adobedtm.com,Netflix
- DOMAIN-SUFFIX,bam.nr-data.net,Netflix
- DOMAIN-SUFFIX,bamgrid.com,Netflix
- DOMAIN-SUFFIX,braze.com,Netflix
- DOMAIN-SUFFIX,cdn.optimizely.com,Netflix
- DOMAIN-SUFFIX,cdn.registerdisney.go.com,Netflix
- DOMAIN-SUFFIX,cws.conviva.com,Netflix
- DOMAIN-SUFFIX,d9.flashtalking.com,Netflix
- DOMAIN-SUFFIX,disney-plus.net,Netflix
- DOMAIN-SUFFIX,disney-portal.my.onetrust.com,Netflix
- DOMAIN-SUFFIX,disney.demdex.net,Netflix
- DOMAIN-SUFFIX,disney.my.sentry.io,Netflix
- DOMAIN-SUFFIX,disneyplus.bn5x.net,Netflix
- DOMAIN-SUFFIX,disneyplus.com,Netflix
- DOMAIN-SUFFIX,disneyplus.com.ssl.sc.omtrdc.net,Netflix
- DOMAIN-SUFFIX,disneystreaming.com,Netflix
- DOMAIN-SUFFIX,dssott.com,Netflix
- DOMAIN-SUFFIX,execute-api.us-east-1.amazonaws.com,Netflix
- DOMAIN-SUFFIX,js-agent.newrelic.com,Netflix

# > ABC
- DOMAIN-SUFFIX,edgedatg.com,Video
- DOMAIN-SUFFIX,go.com,Video

# > AbemaTV
- DOMAIN,linear-abematv.akamaized.net,Video
- DOMAIN-SUFFIX,abema.io,Video
- DOMAIN-SUFFIX,abema.tv,Video
- DOMAIN-SUFFIX,akamaized.net,Video
- DOMAIN-SUFFIX,ameba.jp,Video
- DOMAIN-SUFFIX,hayabusa.io,Video

# > Amazon Prime Video
- DOMAIN-SUFFIX,aiv-cdn.net,Video
- DOMAIN-SUFFIX,amazonaws.com,Video
- DOMAIN-SUFFIX,amazonvideo.com,Video
- DOMAIN-SUFFIX,llnwd.net,Video

# > Bahamut
- DOMAIN-SUFFIX,bahamut.com.tw,Netflix
- DOMAIN-SUFFIX,gamer.com.tw,Netflix
- DOMAIN-SUFFIX,hinet.net,Netflix

# > BBC
- DOMAIN-KEYWORD,bbcfmt,Video
- DOMAIN-KEYWORD,co.uk,Video
- DOMAIN-KEYWORD,uk-live,Video
- DOMAIN-SUFFIX,bbc.co,Video
- DOMAIN-SUFFIX,bbc.co.uk,Video
- DOMAIN-SUFFIX,bbc.com,Video
- DOMAIN-SUFFIX,bbci.co,Video
- DOMAIN-SUFFIX,bbci.co.uk,Video

# > CHOCO TV
- DOMAIN-SUFFIX,chocotv.com.tw,Video


# > Imkan
- DOMAIN-SUFFIX,imkan.tv,Video

# > JOOX
- DOMAIN-SUFFIX,joox.com,Video

# > MytvSUPER
- DOMAIN-KEYWORD,nowtv100,Video
- DOMAIN-KEYWORD,rthklive,Video
- DOMAIN-SUFFIX,mytvsuper.com,Video
- DOMAIN-SUFFIX,tvb.com,Video

# > Pandora
- DOMAIN-SUFFIX,pandora.com,Video

# > Sky GO
- DOMAIN-SUFFIX,sky.com,Video
- DOMAIN-SUFFIX,skygo.co.nz,Video

# > Spotify
- DOMAIN-KEYWORD,spotify,Video
- DOMAIN-SUFFIX,scdn.co,Video
- DOMAIN-SUFFIX,spoti.fi,Video

# > viuTV
- DOMAIN-SUFFIX,viu.tv,Video

# > Youtube
- DOMAIN-KEYWORD,youtube,Video
- DOMAIN-SUFFIX,googlevideo.com,Video
- DOMAIN-SUFFIX,gvt2.com,Video
- DOMAIN-SUFFIX,youtu.be,Video
- DOMAIN-SUFFIX,youtu.be,Video
- DOMAIN-SUFFIX,yt.be,Video
- DOMAIN-SUFFIX,ytimg.com,Video
- DOMAIN-KEYWORD,pornhub,Video
- DOMAIN-KEYWORD,porn,Video
- DOMAIN-KEYWORD,phncdn,Video
- DOMAIN-SUFFIX,vimeo.com,Video
- DOMAIN-SUFFIX,vimeocdn.com,Video

# > Google
- DOMAIN-KEYWORD,google,Proxy
- DOMAIN-SUFFIX,abc.xyz,Proxy
- DOMAIN-SUFFIX,android.com,Proxy
- DOMAIN-SUFFIX,androidify.com,Proxy
- DOMAIN-SUFFIX,dialogflow.com,Proxy
- DOMAIN-SUFFIX,autodraw.com,Proxy
- DOMAIN-SUFFIX,capitalg.com,Proxy
- DOMAIN-SUFFIX,certificate-transparency.org,Proxy
- DOMAIN-SUFFIX,chrome.com,Proxy
- DOMAIN-SUFFIX,chromeexperiments.com,Proxy
- DOMAIN-SUFFIX,chromestatus.com,Proxy
- DOMAIN-SUFFIX,chromium.org,Proxy
- DOMAIN-SUFFIX,creativelab5.com,Proxy
- DOMAIN-SUFFIX,debug.com,Proxy
- DOMAIN-SUFFIX,deepmind.com,Proxy
- DOMAIN-SUFFIX,firebaseio.com,Proxy
- DOMAIN-SUFFIX,getmdl.io,Proxy
- DOMAIN-SUFFIX,ggpht.com,Proxy
- DOMAIN-SUFFIX,gmail.com,Proxy
- DOMAIN-SUFFIX,gmodules.com,Proxy
- DOMAIN-SUFFIX,godoc.org,Proxy
- DOMAIN-SUFFIX,golang.org,Proxy
- DOMAIN-SUFFIX,gv.com,Proxy
- DOMAIN-SUFFIX,gwtproject.org,Proxy
- DOMAIN-SUFFIX,itasoftware.com,Proxy
- DOMAIN-SUFFIX,madewithcode.com,Proxy
- DOMAIN-SUFFIX,material.io,Proxy
- DOMAIN-SUFFIX,polymer-project.org,Proxy
- DOMAIN-SUFFIX,admin.recaptcha.net,Proxy
- DOMAIN-SUFFIX,recaptcha.net,Proxy
- DOMAIN-SUFFIX,shattered.io,Proxy
- DOMAIN-SUFFIX,synergyse.com,Proxy
- DOMAIN-SUFFIX,tensorflow.org,Proxy
- DOMAIN-SUFFIX,tiltbrush.com,Proxy
- DOMAIN-SUFFIX,waveprotocol.org,Proxy
- DOMAIN-SUFFIX,waymo.com,Proxy
- DOMAIN-SUFFIX,webmproject.org,Proxy
- DOMAIN-SUFFIX,webrtc.org,Proxy
- DOMAIN-SUFFIX,whatbrowser.org,Proxy
- DOMAIN-SUFFIX,widevine.com,Proxy
- DOMAIN-SUFFIX,x.company,Proxy
- DOMAIN-SUFFIX,contest.com,Proxy
- DOMAIN-SUFFIX,graph.org,Proxy
- DOMAIN-SUFFIX,quiz.directory,Proxy
- DOMAIN-SUFFIX,t.me,Proxy
- DOMAIN-SUFFIX,tdesktop.com,Proxy
- DOMAIN-SUFFIX,telega.one,Proxy
- DOMAIN-SUFFIX,telegra.ph,Proxy
- DOMAIN-SUFFIX,telegram.dog,Proxy
- DOMAIN-SUFFIX,telegram.me,Proxy
- DOMAIN-SUFFIX,telegram.org,Proxy
- DOMAIN-SUFFIX,telegram.space,Proxy
- DOMAIN-SUFFIX,telesco.pe,Proxy
- DOMAIN-SUFFIX,tg.dev,Proxy
- DOMAIN-SUFFIX,tx.me,Proxy
- DOMAIN-SUFFIX,usercontent.dev,Proxy

# apple
- DOMAIN,hls.itunes.apple.com,DIRECT
- DOMAIN,itunes.apple.com,DIRECT
- DOMAIN,www.apple.com,DIRECT
- DOMAIN-SUFFIX,apple.com,DIRECT
- DOMAIN-SUFFIX,icloud.com,DIRECT
- DOMAIN-SUFFIX,icloud-content.com,DIRECT
- DOMAIN-SUFFIX,mzstatic.com,DIRECT
- DOMAIN-SUFFIX,aaplimg.com,DIRECT
- DOMAIN-SUFFIX,cdn-apple.com,DIRECT

# microsoft
- DOMAIN-SUFFIX,live.com,DIRECT
- DOMAIN-SUFFIX,live.net,DIRECT
- DOMAIN-SUFFIX,office.com,DIRECT
- DOMAIN-SUFFIX,office.net,DIRECT
- DOMAIN-SUFFIX,sharepoint.com,DIRECT
- DOMAIN-SUFFIX,office365.com,DIRECT
- DOMAIN-SUFFIX,officeppe.net,DIRECT
- DOMAIN-SUFFIX,skype.com,DIRECT
- DOMAIN-SUFFIX,onedrive.com,DIRECT
- DOMAIN-SUFFIX,msocsp.com,DIRECT
- DOMAIN-SUFFIX,msauthimages.net,DIRECT
- DOMAIN-SUFFIX,msauth.net,DIRECT
- DOMAIN-SUFFIX,msn.com,DIRECT
- DOMAIN-SUFFIX,onenote.com,DIRECT
- DOMAIN-SUFFIX,onenote.net,DIRECT
- DOMAIN-SUFFIX,1drv.com,DIRECT
- DOMAIN-SUFFIX,microsoft.com,DIRECT
- DOMAIN-SUFFIX,microsoftonline.com,DIRECT

- DOMAIN-SUFFIX,miui.com,DIRECT
- DOMAIN-SUFFIX,miwifi.com,DIRECT
- DOMAIN-SUFFIX,mob.com,DIRECT
- DOMAIN-SUFFIX,netease.com,DIRECT
- DOMAIN-SUFFIX,office.com,DIRECT
- DOMAIN-SUFFIX,office365.com,DIRECT
- DOMAIN-KEYWORD,officecdn,DIRECT
- DOMAIN-SUFFIX,oschina.net,DIRECT
- DOMAIN-SUFFIX,ppsimg.com,DIRECT
- DOMAIN-SUFFIX,pstatp.com,DIRECT
- DOMAIN-SUFFIX,qcloud.com,DIRECT
- DOMAIN-SUFFIX,qdaily.com,DIRECT
- DOMAIN-SUFFIX,qdmm.com,DIRECT
- DOMAIN-SUFFIX,qhimg.com,DIRECT
- DOMAIN-SUFFIX,qhres.com,DIRECT
- DOMAIN-SUFFIX,qidian.com,DIRECT
- DOMAIN-SUFFIX,qihucdn.com,DIRECT
- DOMAIN-SUFFIX,qiniu.com,DIRECT
- DOMAIN-SUFFIX,qiniucdn.com,DIRECT
- DOMAIN-SUFFIX,qiyipic.com,DIRECT
- DOMAIN-SUFFIX,qq.com,DIRECT
- DOMAIN-SUFFIX,qqurl.com,DIRECT
- DOMAIN-SUFFIX,rarbg.to,DIRECT
- DOMAIN-SUFFIX,ruguoapp.com,DIRECT
- DOMAIN-SUFFIX,segmentfault.com,DIRECT
- DOMAIN-SUFFIX,sinaapp.com,DIRECT
- DOMAIN-SUFFIX,smzdm.com,DIRECT
- DOMAIN-SUFFIX,sogou.com,DIRECT
- DOMAIN-SUFFIX,sogoucdn.com,DIRECT
- DOMAIN-SUFFIX,sohu.com,DIRECT
- DOMAIN-SUFFIX,soku.com,DIRECT
- DOMAIN-SUFFIX,speedtest.net,DIRECT
- DOMAIN-SUFFIX,sspai.com,DIRECT
- DOMAIN-SUFFIX,suning.com,DIRECT
- DOMAIN-SUFFIX,taobao.com,DIRECT
- DOMAIN-SUFFIX,tenpay.com,DIRECT
- DOMAIN-SUFFIX,tmall.com,DIRECT
- DOMAIN-SUFFIX,tudou.com,DIRECT
- DOMAIN-SUFFIX,umetrip.com,DIRECT
- DOMAIN-SUFFIX,upaiyun.com,DIRECT
- DOMAIN-SUFFIX,upyun.com,DIRECT
- DOMAIN-SUFFIX,veryzhun.com,DIRECT
- DOMAIN-SUFFIX,weather.com,DIRECT
- DOMAIN-SUFFIX,weibo.com,DIRECT
- DOMAIN-SUFFIX,xiami.com,DIRECT
- DOMAIN-SUFFIX,xiami.net,DIRECT
- DOMAIN-SUFFIX,xiaomicp.com,DIRECT
- DOMAIN-SUFFIX,ximalaya.com,DIRECT
- DOMAIN-SUFFIX,xmcdn.com,DIRECT
- DOMAIN-SUFFIX,xunlei.com,DIRECT
- DOMAIN-SUFFIX,xycdn.com,DIRECT
- DOMAIN-SUFFIX,yhd.com,DIRECT
- DOMAIN-SUFFIX,yihaodianimg.com,DIRECT
- DOMAIN-SUFFIX,yinxiang.com,DIRECT
- DOMAIN-SUFFIX,ykimg.com,DIRECT
- DOMAIN-SUFFIX,youdao.com,DIRECT
- DOMAIN-SUFFIX,youku.com,DIRECT
- DOMAIN-SUFFIX,zealer.com,DIRECT
- DOMAIN-SUFFIX,zhihu.com,DIRECT
- DOMAIN-SUFFIX,zhimg.com,DIRECT
- DOMAIN-SUFFIX,zimuzu.tv,DIRECT

# China
- DOMAIN-SUFFIX,apcdns.net,DIRECT
- DOMAIN-SUFFIX,cdntip.com,DIRECT
- DOMAIN-SUFFIX,cdntips.com,DIRECT
- DOMAIN-SUFFIX,foxmail.com,DIRECT
- DOMAIN-SUFFIX,gtimg.com,DIRECT
- DOMAIN-SUFFIX,idqqimg.com,DIRECT
- DOMAIN-SUFFIX,imqq.com,DIRECT
- DOMAIN-SUFFIX,myapp.com,DIRECT
- DOMAIN-SUFFIX,myqcloud.com,DIRECT
- DOMAIN-SUFFIX,qcloud.com,DIRECT
- DOMAIN-SUFFIX,qcloudimg.com,DIRECT
- DOMAIN-SUFFIX,qq.com,DIRECT
- DOMAIN-SUFFIX,qqmail.com,DIRECT
- DOMAIN-SUFFIX,qzone.com,DIRECT
- DOMAIN-SUFFIX,servicewechat.com,DIRECT
- DOMAIN-SUFFIX,smtcdns.com,DIRECT
- DOMAIN-SUFFIX,smtcdns.net,DIRECT
- DOMAIN-SUFFIX,tencent.com,DIRECT
- DOMAIN-SUFFIX,tencent.com.hk,DIRECT
- DOMAIN-SUFFIX,tencent-cloud.com,DIRECT
- DOMAIN-SUFFIX,tencent-cloud.net,DIRECT
- DOMAIN-SUFFIX,tencentcs.com,DIRECT
- DOMAIN-SUFFIX,tencentmusic.com,DIRECT
- DOMAIN-SUFFIX,tencentyun.com,DIRECT
- DOMAIN-SUFFIX,tenpay.com,DIRECT
- DOMAIN-SUFFIX,wechat.com,DIRECT
- DOMAIN-SUFFIX,wegame.com,DIRECT
- DOMAIN-SUFFIX,weiyun.com,DIRECT
- DOMAIN-SUFFIX,25pp.com,DIRECT
- DOMAIN-SUFFIX,56che.com,DIRECT
- DOMAIN-SUFFIX,95095.com,DIRECT
- DOMAIN-SUFFIX,aliapp.org,DIRECT
- DOMAIN-SUFFIX,alibaba-inc.com,DIRECT
- DOMAIN-SUFFIX,alibaba.com,DIRECT
- DOMAIN-SUFFIX,alibabacapital.com,DIRECT
- DOMAIN-SUFFIX,alibabacorp.com,DIRECT
- DOMAIN-SUFFIX,alibabadoctor.com,DIRECT
- DOMAIN-SUFFIX,alibabafuturehotel.com,DIRECT
- DOMAIN-SUFFIX,alibabagroup.com,DIRECT
- DOMAIN-SUFFIX,alibabaplanet.com,DIRECT
- DOMAIN-SUFFIX,alibabaued.com,DIRECT
- DOMAIN-SUFFIX,alibabausercontent.com,DIRECT
- DOMAIN-SUFFIX,alifanyi.com,DIRECT
- DOMAIN-SUFFIX,alihealth.hk,DIRECT
- DOMAIN-SUFFIX,aliimg.com,DIRECT
- DOMAIN-SUFFIX,alikmd.com,DIRECT
- DOMAIN-SUFFIX,alimama.com,DIRECT
- DOMAIN-SUFFIX,alimebot.com,DIRECT
- DOMAIN-SUFFIX,alimei.com,DIRECT
- DOMAIN-SUFFIX,alipay.com,DIRECT
- DOMAIN-SUFFIX,alipaydns.com,DIRECT
- DOMAIN-SUFFIX,alipayobjects.com,DIRECT
- DOMAIN-SUFFIX,aliplus.com,DIRECT
- DOMAIN-SUFFIX,aliresearch.com,DIRECT
- DOMAIN-SUFFIX,alisoft.com,DIRECT
- DOMAIN-SUFFIX,alisports.com,DIRECT
- DOMAIN-SUFFIX,alitianji.com,DIRECT
- DOMAIN-SUFFIX,aliunicorn.com,DIRECT
- DOMAIN-SUFFIX,aliway.com,DIRECT
- DOMAIN-SUFFIX,aliwork.com,DIRECT
- DOMAIN-SUFFIX,alixiaomi.com,DIRECT
- DOMAIN-SUFFIX,alizhaopin.com,DIRECT
- DOMAIN-SUFFIX,asczwa.com,DIRECT
- DOMAIN-SUFFIX,asczxcefsv.com,DIRECT
- DOMAIN-SUFFIX,atatech.org,DIRECT
- DOMAIN-SUFFIX,b2byao.com,DIRECT
- DOMAIN-SUFFIX,bazai.com,DIRECT
- DOMAIN-SUFFIX,bcvbw.com,DIRECT
- DOMAIN-SUFFIX,cheng.xin,DIRECT
- DOMAIN-SUFFIX,dayu.com,DIRECT
- DOMAIN-SUFFIX,dongting.com,DIRECT
- DOMAIN-SUFFIX,dratio.com,DIRECT
- DOMAIN-SUFFIX,emas-poc.com,DIRECT
- DOMAIN-SUFFIX,ialicdn.com,DIRECT
- DOMAIN-SUFFIX,kanbox.com,DIRECT
- DOMAIN-SUFFIX,lazada.com,DIRECT
- DOMAIN-SUFFIX,liangxinyao.com,DIRECT
- DOMAIN-SUFFIX,maitix.com,DIRECT
- DOMAIN-SUFFIX,1688.com,DIRECT
- DOMAIN-SUFFIX,etao.com,DIRECT
- DOMAIN-SUFFIX,juhuasuan.com,DIRECT
- DOMAIN-SUFFIX,lingshoujia.com,DIRECT
- DOMAIN-SUFFIX,pailitao.com,DIRECT
- DOMAIN-SUFFIX,taobao.com,DIRECT
- DOMAIN-SUFFIX,taobao.org,DIRECT
- DOMAIN-SUFFIX,taobaocdn.com,DIRECT
- DOMAIN-SUFFIX,taobizhong.com,DIRECT
- DOMAIN-SUFFIX,taopiaopiao.com,DIRECT
- DOMAIN-SUFFIX,tbcache.com,DIRECT
- DOMAIN-SUFFIX,tburl.in,DIRECT
- DOMAIN-SUFFIX,tmall.com,DIRECT
- DOMAIN-SUFFIX,tmall.ru,DIRECT
- DOMAIN-SUFFIX,tmalltv.com,DIRECT
- DOMAIN-SUFFIX,tmjl.ai,DIRECT
- DOMAIN-SUFFIX,alitrip.com,DIRECT
- DOMAIN-SUFFIX,feizhu.com,DIRECT
- DOMAIN-SUFFIX,fliggy.com,DIRECT


# DNS
- DOMAIN,dns.google,Proxy
- IP-CIDR,1.1.1.1/32,Proxy,no-resolve
- IP-CIDR,1.0.0.1/32,Proxy,no-resolve
- IP-CIDR,8.8.8.8/32,Proxy,no-resolve
- IP-CIDR,119.29.29.29/32,DIRECT,no-resolve
- IP-CIDR,114.114.114.114/32,DIRECT,no-resolve

# LAN
- IP-CIDR,127.0.0.0/8,DIRECT,no-resolve
- IP-CIDR,10.0.0.0/8,DIRECT,no-resolve
- IP-CIDR,17.0.0.0/8,DIRECT,no-resolve
- IP-CIDR,100.64.0.0/10,DIRECT,no-resolve
- IP-CIDR,172.16.0.0/12,DIRECT,no-resolve
- IP-CIDR,192.168.0.0/16,DIRECT,no-resolve

# RULE VERSION
- DOMAIN,2020020202.version.clash.im,REJECT

- DOMAIN-SUFFIX,cn,DIRECT
- GEOIP,CN,DIRECT

# Final
- MATCH,Proxy
