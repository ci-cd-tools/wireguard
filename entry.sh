#!/usr/bin/env bash

set -euo pipefail

sudo apt install wireguard resolvconf iptables

echo "${{ secrets.WG_CONF }}" > ~/wg0.conf

sudo mv ~/wg0.conf /etc/wireguard/wg0.conf

sudo wg-quick up wg0