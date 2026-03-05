/// The name of the Azure pricing tier to which the SKU applies.
enum CapacitySkuTier {
  pBIEAzure("PBIE_Azure"),
  premium("Premium"),
  autoPremiumHost("AutoPremiumHost");

  const CapacitySkuTier(this.wireValue);
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

