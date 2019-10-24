variable "alicloud_access_key" {
  description = "The Alicloud Access Key ID to use"
  default = ""
}
variable "alicloud_secret_key" {
  description = "The Alicloud Secret Key to use"
  default = ""
}

#Note that these list should be in the same order across all parameters
variable "rolenames" {
  description = "List of Roles to be created"
  default = [
  "TF-Role1",
  "TF-Role2",
  "TF-Role3"
  ]
}

variable "descs" {
  description = "List of descriptions for the Roles"
  default = [
  "Terraform created SSO role no:1",
  "Terraform created SSO role no:2",
  "Terraform created SSO role no:3",
  ]
}

variable "document" {
  description = "The trust policy for the SSO roles"
  default = <<EOF
    {
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {
                    "saml:recipient": "https://signin.alibabacloud.com/saml-role/sso"
                }
            },
            "Effect": "Allow",
            "Principal": {
                "Federated": [
                    "acs:ram::123456789876543:saml-provider/IDP_name"
                ]
            }
        }
    ],
    "Version": "1"
    }
    EOF
}
