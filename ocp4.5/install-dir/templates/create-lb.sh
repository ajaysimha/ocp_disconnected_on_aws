/usr/local/bin/aws cloudformation create-stack --stack-name dev-lb \
  --template-body file://lb_template.yaml \
  --parameters file://lb_parameter.json \
  --capabilities CAPABILITY_NAMED_IAM
