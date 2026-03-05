/// The SKU (tier) of a cluster.
enum ClusterSkuNameEnum {
  valueCapacityReservation("CapacityReservation");

  const ClusterSkuNameEnum(this.wireValue);
  final String wireValue;

  static ClusterSkuNameEnum fromValue(String value) {
    for (final item in ClusterSkuNameEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSkuNameEnum value: $value');
  }
}

