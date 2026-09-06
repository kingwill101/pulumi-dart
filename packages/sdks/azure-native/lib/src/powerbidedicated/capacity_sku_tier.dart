import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the Azure pricing tier to which the SKU applies.
enum CapacitySkuTier implements pulumi.PulumiEnum<String> {
  pBIEAzure("PBIE_Azure"),
  premium("Premium"),
  autoPremiumHost("AutoPremiumHost");

  const CapacitySkuTier(this.wireValue);
  @override
  final String wireValue;

  static CapacitySkuTier fromValue(String value) {
    for (final item in CapacitySkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacitySkuTier value: $value');
  }
}
