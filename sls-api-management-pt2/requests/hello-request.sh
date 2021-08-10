# HOST=http://localhost:3000
HOST=https://tmvs7cwhfb.execute-api.us-east-1.amazonaws.com
APIKEY="fVKsoJR25C8eEoBiqKIXl2qH8eFEYNkQ5Ts0xpvY"
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
