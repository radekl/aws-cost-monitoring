variable "monthly_budget" {
  type = string
}

variable "subscriber_email_list" {
  type = list(string)
}

variable "actual_threshold_percent" {
  type    = string
  default = 100
}

variable "actual_warning_threshold_percent" {
  type    = string
  default = 95
}

variable "forecast_threshold_percent" {
  type    = string
  default = 110
}

variable "forecast_warning_threshold_percent" {
  type    = string
  default = 100
}


variable "aws_services" {
  type = list(string)
  default = [
    "amazonapigateway",
    "amazoncloudfront",
    "amazoncloudwatch",
    "amazondynamodb",
    "amazonec2",
    "amazonecr",
    "amazonecs",
    "amazonefs",
    "amazonelasticache",
    "amazonkinesis",
    "amazonrds",
    "amazonroute53",
    "amazons3",
    "amazonses",
    "amazonsns",
    "awsbudgets",
    "awscloudtrail",
    "awsdatatransfer",
    "awsglue",
    "awskms",
    "awslambda",
    "awsmarketplace",
    "awsqueueservice",
    "awsxray"
  ]
}