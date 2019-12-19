# Terraform Static Site
A Terraform configuration to deploy a static site to Cloudfront with CodePipeline.

## Features
- S3 Cloudfront distribution
- deploy on commit from GitHub with CodePipeline
- create domain and subdomain with route53
- setup and validate ssl with http redirect
- www.example.com to example.com redirect

## Usage
`git clone git@github.com:briansunter/site.git`

create `production.tfvars`

The GitHub repo for your app needs to respond to `npm run build` and put its assets in the `dist` folder.

``` hcl
region = "us-east-1"
domain = "briansunter.com"
zone_id = "Z26YPOHMFFRJP4"
app_name = "personal-site"
git_repository_owner = "briansunter"
git_repository_name = "site"
git_repository_branch = "master"
```

`terraform apply -var-file=production.tfvars`
