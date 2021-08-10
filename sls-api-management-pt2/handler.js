"use strict";

const AWS = require("aws-sdk");
const apiGateway = new AWS.APIGateway();
const moment = require("moment");

const hello = async (event) => {
  return {
    statusCode: 200,
    body: "AWS Serverless Api Management",
  };
};

const usage = async (event) => {
  const { from, to, usagePlanId, keyId } = event.queryStringParameters;

  const usage = await apiGateway
    .getUsage({
      endDate: moment(to).format("YYYY-MM-DD"),
      startDate: moment(from).format("YYYY-MM-DD"),
      usagePlanId,
      keyId,
    })
    .promise();

  return {
    statusCode: 200,
    body: JSON.stringify(usage, null, 2),
  };
};

const usagePlans = async (event) => {
  const usagePlans = await apiGateway.getUsagePlans().promise();

  console.log({ usagePlans });

  return {
    statusCode: 200,
    body: JSON.stringify(usagePlans, null, 2),
  };
};

module.exports = {
  hello,
  usage,
  usagePlans,
};
