const freeUsers = async () => {
  // users could be got from DynamoDB or other database
  return [
    'ilma_andrade@gmail.com',
    'joao_andradee@gmail.com'
  ]
}

const paidUsers = async () => {
  return [
    'regis_andrade@gmail.com',
  ]
}

exports.free = freeUsers;
exports.paid = paidUsers;