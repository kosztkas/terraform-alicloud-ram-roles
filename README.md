Alicloud RAM Role Creation Terraform Module
===

Terraform module which adds list of roles with SSO trust policy 
It assumes that you have RAM enabled already and set up an IdP for Role-based SSO

2. Setting values for the following variables in the variables file or through the environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - the list of Rolenames
    - the list for descriptions of these roles
    - the trust policy document

    
Authors
-------
Created and maintained by Sandor Kosztka (@kosztkas)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform documentation](https://www.terraform.io/docs/providers/alicloud/index.html)
