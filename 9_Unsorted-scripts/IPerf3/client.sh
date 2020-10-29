#!/usr/bin/env bash

################################################################################
#
#   Со стороны клиента начинаем отправлять запрсы на сервер.
#
################################################################################


# Client specific:
#   -c, --client    <host>    run in client mode, connecting to <host>
#   --sctp                    use SCTP rather than TCP
#   -X, --xbind <name>        bind SCTP association to links
#   --nstreams      #         number of SCTP streams
#   -u, --udp                 use UDP rather than TCP
#   --connect-timeout #       timeout for control connection setup (ms)
#   -b, --bitrate #[KMG][/#]  target bitrate in bits/sec (0 for unlimited)
#                             (default 1 Mbit/sec for UDP, unlimited for TCP)
#                             (optional slash and packet count for burst mode)
#   --pacing-timer #[KMG]     set the timing for pacing, in microseconds (default 1000)
#   --fq-rate #[KMG]          enable fair-queuing based socket pacing in
#                             bits/sec (Linux only)
#   -t, --time      #         time in seconds to transmit for (default 10 secs)
#   -n, --bytes     #[KMG]    number of bytes to transmit (instead of -t)
#   -k, --blockcount #[KMG]   number of blocks (packets) to transmit (instead of -t or -n)
#   -l, --length    #[KMG]    length of buffer to read or write
#                             (default 128 KB for TCP, dynamic or 1460 for UDP)
#   --cport         <port>    bind to a specific client port (TCP and UDP, default: ephemeral port)
#   -P, --parallel  #         number of parallel client streams to run
#   -R, --reverse             run in reverse mode (server sends, client receives)
#   --bidir                   run in bidirectional mode.
#                             Client and server send and receive data.
#   -w, --window    #[KMG]    set window size / socket buffer size
#   -C, --congestion <algo>   set TCP congestion control algorithm (Linux and FreeBSD only)
#   -M, --set-mss   #         set TCP/SCTP maximum segment size (MTU - 40 bytes)
#   -N, --no-delay            set TCP/SCTP no delay, disabling Nagle's Algorithm
#   -4, --version4            only use IPv4
#   -6, --version6            only use IPv6
#   -S, --tos N               set the IP type of service, 0-255.
#                             The usual prefixes for octal and hex can be used,
#                             i.e. 52, 064 and 0x34 all specify the same value.
#   --dscp N or --dscp val    set the IP dscp value, either 0-63 or symbolic.
#                             Numeric values can be specified in decimal,
#                             octal and hex (see --tos above).
#   -L, --flowlabel N         set the IPv6 flow label (only supported on Linux)
#   -Z, --zerocopy            use a 'zero copy' method of sending data
#   -O, --omit N              omit the first n seconds
#   -T, --title str           prefix every output line with this string
#   --extra-data str          data string to include in client and server JSON
#   --get-server-output       get results from server
#   --udp-counters-64bit      use 64-bit counters in UDP test packets
#   --repeating-payload       use repeating pattern in payload, instead of
#                             randomized payload (like in iperf2)
#   --username                username for authentication
#   --rsa-public-key-path     path to the RSA public key used to encrypt
#                             authentication credentials

# Обычный запуск
iperf3 -c 172.20.4.88

# Сервер в интернете
iperf3 -c speedtest.hostkey.ru
