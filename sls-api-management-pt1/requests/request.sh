#in local tests, with serverless-offline, the APIKEY could be got during startup application

HOST=http://localhost:3000
# HOST=https://parol2fief.execute-api.us-east-1.amazonaws.com
APIKEY="d41d8cd98f00b204e9800998ecf8427e"
curl --silent \
  -H "x-api-key: $APIKEY" \
  $HOST/dev/hello


# Loop test for api key limits
# echo "Press <CTRL + C> to exit." 
# while : 
# do
#   curl --silent \
#     -H "x-api-key: $APIKEY" \
#     $HOST/dev/hello
# done