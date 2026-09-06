import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of Nat Gateway SKU.
enum NatGatewaySkuName implements pulumi.PulumiEnum<String> {
  valueStandard("Standard");

  const NatGatewaySkuName(this.wireValue);
  @override
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
