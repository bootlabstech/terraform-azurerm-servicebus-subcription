resource "azurerm_servicebus_subscription" "example" {
  for_each= { for i in var.subscription_details : i.name => i }
  name               = each.value.name
  topic_id           = var.topic_id
  max_delivery_count = each.value.max_delivery_count
  dead_lettering_on_filter_evaluation_error = each.value.dead_lettering_on_filter_evaluation_error
  enable_batched_operations = each.value.enable_batched_operations
}


