/// Name of Nat Gateway SKU.
enum NatGatewaySkuName {
  valueStandard("Standard");

  const NatGatewaySkuName(this.value);
  final String value;

  static NatGatewaySkuName fromValue(String value) {
    for (final item in NatGatewaySkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NatGatewaySkuName value: $value');
  }
}

