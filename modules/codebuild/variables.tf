variable "region" {
  type = string
  description = "Describe the region where infrastrcuture will be deployed."
  default = "us-east-1"
}

variable "bucket" {
  type = string
  description = "The bucket where the artifacts will be stored."
  default = "my-deploy-serverless-code"
}

variable "codepipeline_role_arn" {
  type = string
  description = "The role to operate de codepipeline."
  default = "arn:aws:iam::785082223516:role/service-role/AWSCodePipelineServiceRole-us-east-1-code-deploy-pipe"
}

variable "connection_arn" {
  type = string
  description = "The connection to download the source."
  default = "arn:aws:codestar-connections:us-east-1:785082223516:connection/c83c54b8-3d03-4c11-abf2-f9cd5f8b5cde"
}

variable "codebuild_role_arn" {
  type = string
  description = "describe your variable"
  default = "arn:aws:iam::785082223516:role/service-role/codebuild-code-builde-pipe-service-role"
}

variable "buildspec_path" {
  type = string
  description = "describe your variable"
  default = "buildspec.yml"
}