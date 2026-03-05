/// Name of Nat Gateway SKU.
enum NatGatewaySkuName {
  valueStandard("Standard");

  const NatGatewaySkuName(this.wireValue);
  final String wireValue;

  static NatGatewaySkuName fromValue(String value) {
    for (final item in NatGatewaySkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NatGatewaySkuName value: $value');
  }
}

