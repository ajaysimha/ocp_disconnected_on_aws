/usr/local/bin/aws cloudformation create-stack --stack-name dev-bootstrap \
  --template-body file://bootstrap_template.yaml \
  --parameters file://bootstrap_parameter.json \
  --capabilities CAPABILITY_NAMED_IAM
