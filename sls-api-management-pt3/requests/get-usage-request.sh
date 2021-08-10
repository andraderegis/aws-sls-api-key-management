HOST=http://localhost:3000
HOST=https://tmvs7cwhfb.execute-api.us-east-1.amazonaws.com

# from getUsagePlan function
USAGE_PLAN_ID="1pfkuw"
KEYID=jouswk2dg3
APIKEY="CjkfZPNyug9kJc2AWmOZFka4VnAAtWb9Gms12Off"
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
