#!/bin/bash
# name of your project with chaincode default
PROJECT_NAME="misterybox-java"
LANGUAGE="java"

export MSYS_NO_PATHCONV=1

echo "instantiate chaincode"
docker exec -e "CORE_PEER_LOCALMSPID=RubyMSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ruby.emerald.com/users/Admin@ruby.emerald.com/msp" cli peer chaincode instantiate -o orderer.emerald.com:7050 -C jewelchannel -n $PROJECT_NAME -l "$LANGUAGE" -v 1.0 -c '{"Args":[""]}' -P "OR ('RubyMSP.member')"