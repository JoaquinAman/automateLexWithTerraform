# resource "aws_cloudformation_stack" "network2" {
#     name = "networking-stack2"
    
#     parameters = {}
#     capabilities = ["CAPABILITY_IAM"]
    
#     template_body = <<STACK
#   {
#       "Parameters": {},
#       "Resources": {
#         "LB14H9U": {
#           "Type": "AWS::Lex::Bot",
#           "Properties": {
#             "Name": "MegamindFromTerraform",
#             "RoleArn":"arn:aws:iam::077492956248:role/lambda-invoke-role",
#             "DataPrivacy": {
#               "ChildDirected": false
#             },
#             "IdleSessionTTLInSeconds": 300,
#             "Description": "Basic bot created from terraform"
#           }
#         }
#       }
#     }
#     STACK
#   }

resource "aws_cloudformation_stack" "network3" {
    name = "networking-stack3"

    parameters = {}
    capabilities = ["CAPABILITY_IAM"]

    template_body = <<STACK
    # Constructing AWS Lex bot, adding intent and slot types:
    # https://docs.aws.amazon.com/lex/latest/dg/lambda-build-intents-slots.html
    # https://docs.aws.amazon.com/lex/latest/dg/lambda-build-intents-slots.html#lambda-build-intents-slots-lex-bot

    # Constructing AWS Lex bot, adding intent and slot types:

   
  {
      "Parameters": {
#           "LB14H9UIntent": {
#               "Type": "AWS::Lex::Intent",
#               "Properties": {
#                 "Name": "MegamindFromTerraform",
#                 "BotName": "MegamindFromTerraform",
#                 "IntentVersions": [
#                   {
#                     "Name": "MegamindFromTerraform",
#                     "Description": "Basic bot created from terraform"
#                   }
#                 ]
#               }
            },
      },
      "Resources": {
        "LB14H9U": {
          "Type": "AWS::Lex::Bot",
          "Properties": {
            "Name": "MegamindFromTerraform",
            "RoleArn":"arn:aws:iam::077492956248:role/lambda-invoke-role",
            "DataPrivacy": {
              "ChildDirected": false
            },
              
#             "KeyName":{
#                 "Ref": "LB14H9UIntent"
#             },
              
            "IdleSessionTTLInSeconds": 300,
            "Description": "Basic bot created from terraform"


          }


        },
#         "LB14H9UIntent": {
#           "Type": "AWS::Lex::Intent",
#           "Properties": {
#             "Name": "MegamindFromTerraform",
#             "BotName": "MegamindFromTerraform",
#             "IntentVersions": [
#               {
#                 "Name": "MegamindFromTerraform",
#                 "Description": "Basic bot created from terraform"
#               }
#             ]
#           }
#         },
#         "LB14H9USlotType": {
#           "Type": "AWS::Lex::SlotType",
#           "Properties": {
#             "Name": "MegamindFromTerraform",
#             "Description": "Basic bot created from terraform",
#             "EnumerationValues": [
#               {
#                 "Value": "Megamind",
#                 "Synonyms": [
#                   "Megamind"
#                 ]
#               },
#               {
#                 "Value": "Megamind2",
#                 "Synonyms": [
#                   "Megamind2"
#                 ]
#               }
#             ]
#           }
#         },


      }

    }
    STACK
  }
