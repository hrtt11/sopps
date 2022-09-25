#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8081,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "22112b63-fb6c-7841-b2b4-d0a4d31a532f",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/oss"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray run -config=/etc/v2ray/config.json
