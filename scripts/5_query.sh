INJ_ADDRESS=inj18u7hruq746y55fz39wa8fckele77ljk5sn0l4a
#CONTRACT_ADDRESS="inj1eeh6lpsarhj2smn6h9ld65xz4ke9rtdfx4zhun"
CONTRACT_ADDRESS="inj1eeh6lpsarhj2smn6h9ld65xz4ke9rtdfx4zhun"

echo "------------ get staked nfts ------------------"

#GET_USER_LIST='{"get_user_list":{}}'
#injectived query wasm contract-state smart $CONTRACT_ADDRESS "$GET_USER_LIST" --output text

GET_USER_STAKED_NFTS='{"get_staked_nfts":{"address":"inj1qhjg7s604ywn57gjgpn2s23kl8v6pymr492a64","collection_address":"inj1krph8w9d9ep289yh7pcuk7gd587a693g340vyj"}}'
injectived query wasm contract-state smart $CONTRACT_ADDRESS "$GET_USER_STAKED_NFTS" --output text


#yes 12345678 | injectived tx wasm execute $CONTRACT_ADDRESS "$GET_USER_LIST" \
#  --from=$INJ_ADDRESS \
#  --yes --fees=1000000000000000inj --gas=2000000 \
#  --output json
