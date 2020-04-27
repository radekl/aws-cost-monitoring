# AWS Cost Monitoring

This repository contains terraform module ready to use for everyone that would like to add AWS cost monitoring to their AWS accounts

## Usage

### AWS Budget

```ruby
module "aws_budget" {
  source                = "github.com/schibsted/aws-cost-monitoring//aws-budget"
  monthly_budget        = 1000 #USD
  subscriber_email_list = ["my-email@example.org"]
}
```

### Datadog dashboard and monitors

```ruby
module "datadog_monitors" {
  source                = "github.com/schibsted/aws-cost-monitoring//datadog-budget"
  monthly_budget        = 1000 #USD
  subscriber_email_list = ["my-email@example.org"]
}
```

## Resources created

### AWS Budget
- [`aws_budgets_budget.monthly`](https://www.terraform.io/docs/providers/aws/r/budgets_budget.html): Monthly budget including basic notifications when overspending

### Datadog dashboard and monitors
- [`datadog_monitor.aws_service_anomaly`](https://www.terraform.io/docs/providers/datadog/r/monitor.html): Per AWS service anomaly detection monitors group
- [`datadog_dashboard.aws_cost_dashboard`](https://www.terraform.io/docs/providers/datadog/r/dashboard.html): AWS cost dashboard