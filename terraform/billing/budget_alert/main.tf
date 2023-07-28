resource "google_billing_budget" "comprehensive_lab_budget" {
    billing_account=var.billing_account
    display_name=var.budget_name
    amount {
    specified_amount {
      currency_code = "USD"
      units = "${var.budget_threshold}"
    }
  }

  budget_filter {
    calendar_period="MONTH"
  }

  threshold_rules {
      threshold_percent =  0.5
      spend_basis = "CURRENT_SPEND"
  }
  threshold_rules {
      threshold_percent =  0.7
      spend_basis = "CURRENT_SPEND"
  }
  threshold_rules {
      threshold_percent =  0.9
      spend_basis = "CURRENT_SPEND"
  }
}