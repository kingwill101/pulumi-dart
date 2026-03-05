/// Required. SKU of subscription.
enum SubscriptionSku {
  skuUnspecified("SKU_UNSPECIFIED"),
  bceStandardSku("BCE_STANDARD_SKU");

  const SubscriptionSku(this.wireValue);
  final String wireValue;

  static SubscriptionSku fromValue(String value) {
    for (final item in SubscriptionSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionSku value: $value');
  }
}

