resource "aws_cloudformation_stack" "network2" {
    name = "networking-stack2"
    
    parameters = {}
    capabilities = ["CAPABILITY_IAM"]
    
    template_body = <<STACK
  {
      "Parameters": {},
      "Resources": {
        "LB14H9U": {
          "Type": "AWS::Lex::Bot",
          "Properties": {
            "Name": "MegamindFromTerraform",
            "RoleArn":"arn:aws:iam::077492956248:role/lambda-invoke-role",
            "DataPrivacy": {
              "ChildDirected": false
            },
            "IdleSessionTTLInSeconds": 300,
            "Description": "Basic bot created from terraform"
          }
        }
      }
    }
    STACK
  }
