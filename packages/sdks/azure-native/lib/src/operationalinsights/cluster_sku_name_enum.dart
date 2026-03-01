/// The SKU (tier) of a cluster.
enum ClusterSkuNameEnum {
  valueCapacityReservation("CapacityReservation");

  const ClusterSkuNameEnum(this.value);
  final String value;

  static ClusterSkuNameEnum fromValue(String value) {
    for (final item in ClusterSkuNameEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSkuNameEnum value: $value');
  }
}

