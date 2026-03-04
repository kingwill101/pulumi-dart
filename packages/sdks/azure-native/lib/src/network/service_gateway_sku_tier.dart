/// Tier of a service gateway SKU.
enum ServiceGatewaySkuTier {
  valueRegional("Regional");

  const ServiceGatewaySkuTier(this.wireValue);
  final String wireValue;

  static ServiceGatewaySkuTier fromValue(String value) {
    for (final item in ServiceGatewaySkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceGatewaySkuTier value: $value');
  }
}
