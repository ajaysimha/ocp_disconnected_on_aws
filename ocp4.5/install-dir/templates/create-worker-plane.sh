/usr/local/bin/aws cloudformation create-stack --stack-name dev-worker3 \
  --template-body file://worker3_template.yaml \
  --parameters file://worker3_parameter.json 
