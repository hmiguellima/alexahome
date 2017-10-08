#!/usr/local/bin/bash
while true
do
  CMD=$(curl --silent -H "Accept: application/json" -H "Content-Type: application/json" -X GET https://foy8wn06gc.execute-api.us-east-1.amazonaws.com/prod/skyStoreCommands)

  echo $CMD

  if [ "$CMD" = "{\"Item\":{\"guid\":\"na\",\"command\":\"turnontv\",\"user_id\":\"HLi05\"}}" ]
  then
    echo Powering on the tv
    ./bravia.sh PowerOn
  fi

  if [ "$CMD" = "{\"Item\":{\"guid\":\"na\",\"command\":\"turnofftv\",\"user_id\":\"HLi05\"}}" ]
  then
    echo Powering off the tv
    ./bravia.sh PowerOff
  fi
  sleep 1
done
