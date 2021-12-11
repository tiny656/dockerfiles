#!/bin/sh

launch() {

    cat > kaillerasrv.conf <<EOF
; Kaillera server config file

; ServerName can be up to 64 characters long.
ServerName=${SERVER_NAME}

; Location can be up to 64 characters long.
Location=${LOCATION}

; URL can be up to 128 characters long. (ex: http://www.mysite.com/)
URL=${URL}

MaxUsers=${MAX_USERS}
Port=${PORT}

; Set Public to 0 if you want to run the server on a private LAN
Public=${PUBLIC}

; Use this parameter if you want to manually specify your server's
; IP address or leave blank for automatic
; (ex: IP=154.253.21.56)
IP=${IP}

; Messages flood protection
; FloodMsgNb is the max. number of times a same message has to
; be received in FloodMsgTime seconds.
FloodMsgNb=5
FloodMsgTime=3

; Minimum ping restriction (in ms)
; 0=disabled
MinPing=0

; Maximum connection setting restriction
; 0=disabled, 1=Bad, 2=Low, 3=Average, 4=Good, 5=Excellant, 6=LAN
MaxConnSet=0

; Message of the Day
; Note that you can stack "MotdLine" options
;MotdLine=Welcome to unknown serv0r! You can
;MotdLine=see our website at http://web.site/

; AllowWebAccess (1=yes,0=no)
AllowWebAccess=1

; End of Kaillera server config file
EOF

    cat kaillerasrv.conf
    kaillerasrv
}

if [ -z "$@" ]; then
    launch
else
    exec "$@"
fi
