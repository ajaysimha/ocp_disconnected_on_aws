/usr/local/bin/aws cloudformation create-stack --stack-name dev-control \
  --template-body file://control_template.yaml \
  --parameters file://control_parameter.json \
  --capabilities CAPABILITY_NAMED_IAM
