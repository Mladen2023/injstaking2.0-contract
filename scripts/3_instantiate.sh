str=$(cat ./config.sh | grep "code_id")
CODE_ID=${str:8}

str=$(cat ./config.sh | grep "INJ_ADDRESS")
INJ_ADDRESS=${str:12}

str=$(cat ./config.sh | grep "OWNER")
OWNER=${str:6}

str=$(cat ./config.sh | grep "native_token")
native_token=${str:13}

INST='{"owner":"'$OWNER'","fee_address":"'$OWNER'","native_token":"inj"}'
echo $INST

yes 12345678 | injectived tx wasm instantiate $CODE_ID $INST \
--label="NFT-Staking" \
--from=$INJ_ADDRESS \
--yes --fees=1000000000000000inj \
--gas=2000000 \
--no-admin 