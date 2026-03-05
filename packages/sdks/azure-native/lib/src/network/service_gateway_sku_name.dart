/// Name of a service gateway SKU.
enum ServiceGatewaySkuName {
  valueStandard("Standard");

  const ServiceGatewaySkuName(this.wireValue);
  final String wireValue;

  static ServiceGatewaySkuName fromValue(String value) {
    for (final item in ServiceGatewaySkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceGatewaySkuName value: $value');
  }
}

