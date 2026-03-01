/// Required. SKU of subscription.
enum SubscriptionSku {
  skuUnspecified("SKU_UNSPECIFIED"),
  bceStandardSku("BCE_STANDARD_SKU");

  const SubscriptionSku(this.value);
  final String value;

  static SubscriptionSku fromValue(String value) {
    for (final item in SubscriptionSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionSku value: $value');
  }
}

