workflow "Public Repo SMS Alert" {
  on = "public"
  resolves = ["SMS Alert"]
}

action "SMS Alert" {
  uses = "bitoiu/repo-visibility-alert-action@master"
  secrets = ["ACCOUNT_SID", "AUTH_TOKEN", "NUMBERS", "GH_TOKEN"]
  env = {
    LOG_LEVEL = "trace"
    NOTIFY_ONLY = "true"
  }
}
