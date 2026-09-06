import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of a service gateway SKU.
enum ServiceGatewaySkuName implements pulumi.PulumiEnum<String> {
  standard("Standard");

  const ServiceGatewaySkuName(this.wireValue);
  @override
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
