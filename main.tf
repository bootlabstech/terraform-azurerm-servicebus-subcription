resource "azurerm_servicebus_subscription" "example" {
  for_each= { for i in var.subscription_details : i.name => i }
  name               = each.value.name
  topic_id           = var.topic_id
  max_delivery_count = each.value.max_delivery_count
}


