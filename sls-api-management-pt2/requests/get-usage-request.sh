# HOST=http://localhost:3000
HOST=https://tmvs7cwhfb.execute-api.us-east-1.amazonaws.com

# from getUsagePlan function
USAGE_PLAN_ID="1pfkuw"
KEYID=y9i2nk5y9f
APIKEY="9zKlj96XWR7RzuyPEpVcK4aEhkpoWioh3ou9217m"
FROM="2021-08-09"
TO="2021-08-10"

curl --silent \
  "$HOST/dev/getUsage?keyId=$KEYID&usagePlanId=$USAGE_PLAN_ID&from=$FROM&to=$TO" \
  | tee usage.log

# Loop test for api key limits
# echo "Press <CTRL + C> to exit."
# while :
# do
#   curl --silent \
#     -H "x-api-key: $APIKEY" \
#     $HOST/dev/hello
# done
