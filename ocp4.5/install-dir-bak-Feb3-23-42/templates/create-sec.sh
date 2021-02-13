/usr/local/bin/aws cloudformation create-stack --stack-name dev-sec \
  --template-body file://sec_template.yaml \
  --parameters file://sec_parameter.json \
  --capabilities CAPABILITY_NAMED_IAM
