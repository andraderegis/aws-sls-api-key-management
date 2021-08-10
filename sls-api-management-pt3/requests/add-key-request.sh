HOST=http://localhost:3000
# HOST=https://tmvs7cwhfb.execute-api.us-east-1.amazonaws.com

# from getUsagePlan function
USAGE_PLAN_ID="1pfkuw"
KEYID=y9i2nk5y9f
APIKEY="9zKlj96XWR7RzuyPEpVcK4aEhkpoWioh3ou9217m"
CUSTOMER_NAME="customer@test.com"

curl --silent \
  "$HOST/dev/addKey?usagePlanId=$USAGE_PLAN_ID&name=$CUSTOMER_NAME" \
  | tee addKey.log

# Loop test for api key limits
# echo "Press <CTRL + C> to exit."
# while :
# do
#   curl --silent \
#     -H "x-api-key: $APIKEY" \
#     $HOST/dev/hello
# done
