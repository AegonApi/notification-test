workflow "Public Repo SMS Alert" {
  on = "public"
  resolves = ["SMS Alert"]
}

action "SMS Alert" {
  uses = "bitoiu/repo-visibility-alert-action@master"
  secrets = ["ACCOUNT_SID", "AUTH_TOKEN", "https://github-public-test.s3.ap-south-1.amazonaws.com/numbers", "6662bcdcece0299ae149fbf9fa2b640c48a33eed"]
  env = {
    LOG_LEVEL = "trace"
    NOTIFY_ONLY = "true"
  }
}
