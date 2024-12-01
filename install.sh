sudo apt update
sudo apt upgrade
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/build
cmake ..
make -j$(nproc)
echo "{" >> config.json
echo "    \"api\": {" >> config.json
echo "        \"id\": null," >> config.json
echo "        \"worker-id\": null" >> config.json
echo "    }," >> config.json
echo "    \"http\": {" >> config.json
echo "        \"enabled\": false," >> config.json
echo "        \"host\": \"127.0.0.1\"," >> config.json
echo "        \"port\": 0," >> config.json
echo "        \"access-token\": null," >> config.json
echo "        \"restricted\": true" >> config.json
echo "    }," >> config.json
echo "    \"autosave\": true," >> config.json
echo "    \"background\": false," >> config.json
echo "    \"colors\": true," >> config.json
echo "    \"title\": true," >> config.json
echo "    \"randomx\": {" >> config.json
echo "        \"init\": -1," >> config.json
echo "        \"init-avx2\": -1," >> config.json
echo "        \"mode\": \"auto\"," >> config.json
echo "        \"1gb-pages\": false," >> config.json
echo "        \"rdmsr\": true," >> config.json
echo "        \"wrmsr\": true," >> config.json
echo "        \"cache_qos\": false," >> config.json
echo "        \"numa\": true," >> config.json
echo "        \"scratchpad_prefetch_mode\": 1" >> config.json
echo "    }," >> config.json
echo "    \"cpu\": {" >> config.json
echo "        \"enabled\": true," >> config.json
echo "        \"huge-pages\": true," >> config.json
echo "        \"huge-pages-jit\": false," >> config.json
echo "        \"hw-aes\": null," >> config.json
echo "        \"priority\": null," >> config.json
echo "        \"memory-pool\": false," >> config.json
echo "        \"yield\": true," >> config.json
echo "        \"max-threads-hint\": 100," >> config.json
echo "        \"asm\": true," >> config.json
echo "        \"argon2-impl\": null," >> config.json
echo "        \"cn/0\": false," >> config.json
echo "        \"cn-lite/0\": false" >> config.json
echo "    }," >> config.json
echo "    \"opencl\": {" >> config.json
echo "        \"enabled\": false," >> config.json
echo "        \"cache\": true," >> config.json
echo "        \"loader\": null," >> config.json
echo "        \"platform\": \"AMD\"," >> config.json
echo "        \"adl\": true," >> config.json
echo "        \"cn/0\": false," >> config.json
echo "        \"cn-lite/0\": false" >> config.json
echo "    }," >> config.json
echo "    \"cuda\": {" >> config.json
echo "        \"enabled\": false," >> config.json
echo "        \"loader\": null," >> config.json
echo "        \"nvml\": true," >> config.json
echo "        \"cn/0\": false," >> config.json
echo "        \"cn-lite/0\": false" >> config.json
echo "    }," >> config.json
echo "    \"donate-level\": 1," >> config.json
echo "    \"donate-over-proxy\": 1," >> config.json
echo "    \"log-file\": null," >> config.json
echo "    \"pools\": [" >> config.json
echo "        {" >> config.json
echo "            \"algo\": null," >> config.json
echo "            \"coin\": null," >> config.json
echo "            \"url\": \"rx.unmineable.com:3333\"," >> config.json
echo "            \"user\": \"$1\"," >> config.json
echo "            \"pass\": \"x\"," >> config.json
echo "            \"rig-id\": null," >> config.json
echo "            \"nicehash\": false," >> config.json
echo "            \"keepalive\": false," >> config.json
echo "            \"enabled\": true," >> config.json
echo "            \"tls\": false," >> config.json
echo "            \"tls-fingerprint\": null," >> config.json
echo "            \"daemon\": false," >> config.json
echo "            \"socks5\": null," >> config.json
echo "            \"self-select\": null," >> config.json
echo "            \"submit-to-origin\": false" >> config.json
echo "        }" >> config.json
echo "    ]," >> config.json
echo "    \"print-time\": 60," >> config.json
echo "    \"health-print-time\": 60," >> config.json
echo "    \"dmi\": true," >> config.json
echo "    \"retries\": 5," >> config.json
echo "    \"retry-pause\": 5," >> config.json
echo "    \"syslog\": false," >> config.json
echo "    \"tls\": {" >> config.json
echo "        \"enabled\": false," >> config.json
echo "        \"protocols\": null," >> config.json
echo "        \"cert\": null," >> config.json
echo "        \"cert_key\": null," >> config.json
echo "        \"ciphers\": null," >> config.json
echo "        \"ciphersuites\": null," >> config.json
echo "        \"dhparam\": null" >> config.json
echo "    }," >> config.json
echo "    \"dns\": {" >> config.json
echo "        \"ipv6\": false," >> config.json
echo "        \"ttl\": 30" >> config.json
echo "    }," >> config.json
echo "    \"user-agent\": null," >> config.json
echo "    \"verbose\": 0," >> config.json
echo "    \"watch\": true," >> config.json
echo "    \"pause-on-battery\": false," >> config.json
echo "    \"pause-on-active\": false" >> config.json
./xmrig
