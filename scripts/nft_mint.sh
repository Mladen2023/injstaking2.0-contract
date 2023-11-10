OWNER="inj1f7tejep73vzs6r6ydt93mx9778knmdvxl4sz50"
CONTRACT="inj12tmxy53a4mpmlwgj37hwn2hgmuyyclj9spnn0f"
ADDRESS="inj1w6vuanz7u0hh4wv5zg7z8zm2fj8xjpp3xw6k5a"

META2="inj1vfesvzg2h2e6dc2qp6f5t0rqc79ghm6hv2npmx"
KEPLR2="inj1delg0dqpj0kjn0x5r83srkzs5gy8ezuuempkud"

MINT='{"mint":{"token_id":"1005","owner":"'$KEPLR2'","extension":null,"token_uri":"ipfs://QmVSdvViUML9M5V8q84YpqUiRzsTrRYBftLHvYSW9HtqSR/metadata/01H3Q6ZYM6XDWF1Y59F662S6Z7.json"}}'
yes 12345678 | injectived tx wasm execute $CONTRACT "$MINT" \
    --from=$OWNER \
    --yes --fees=1000000000000000inj --gas=2000000 \
    --output json
