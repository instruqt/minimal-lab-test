
resource "network" "onprem" {
  subnet = "10.6.0.0/16"
}

resource "network" "k3s" {
  subnet = "10.6.0.200"
}

resource "aws_account" "my_account" {
  user_iam_policy    = "user_iam_policy.json"
  account_scp_policy = "account_scp_policy.json"
}

resource "azure_subscription" "my_subscription" {
  tags = {
    "environment" = "production"
  }
}
