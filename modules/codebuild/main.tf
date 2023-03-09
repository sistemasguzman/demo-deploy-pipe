resource "aws_codebuild_project" "lab_codebuild_project" {
  name           = "lab_codebuild_project"
  description    = "lab_codebuild_project"
  build_timeout  = "15"
  queued_timeout = "5"

  service_role = var.codebuild_role_arn

  artifacts {
    type = "CODEPIPELINE"
    
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:6.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

    environment_variable {
      name  = "SOME_KEY1"
      value = "SOME_VALUE1"
    }
  }

  source {
    type            = "CODEPIPELINE"
    buildspec = var.buildspec_path
  }

  tags = {
    Environment = "Test"
  }
}
