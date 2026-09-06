import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of a service gateway SKU.
enum ServiceGatewaySkuTier implements pulumi.PulumiEnum<String> {
  regional("Regional");

  const ServiceGatewaySkuTier(this.wireValue);
  @override
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
