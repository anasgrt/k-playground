
module "oidc_github" {
  source  = "unfunco/oidc-github/aws"
  version = "1.5.2"

  github_repositories = [
    var.repo
  ]

  iam_role_name = "github_actions_role"

}