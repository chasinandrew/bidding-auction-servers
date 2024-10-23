INPUT_PATH=seller_input.json
SFE_HOST_ADDRESS=172.20.0.5:50053
CLIENT_IP=172.19.0.1
export EXTRA_CBUILD_ARGS="--docker-network test"

./builders/tools/bazel-debian run //tools/secure_invoke:invoke \
    -- \
    -target_service=sfe \
    -input_file="/src/workspace/${INPUT_PATH}" \
    -host_addr=${SFE_HOST_ADDRESS} \
    -client_ip=${CLIENT_IP} \
    -insecure=true 