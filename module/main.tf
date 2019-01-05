provider "aws" {
  region = "us-west-2"
}

module "my_bucket" {
  source = "./s3"
  bucket_name = "test"
  version = true
    
}

module "sec_bucket" {
  source = "./s3"
  bucket_name = "test1"
  
}

output "my_bucket_arn" {
  value = "${module.my_bucket.s3_bucket_arn}"
}

output "sec_bucket_arn" {
  value = "${module.sec_bucket.s3_bucket_arn}"
}





