import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (tier) of a cluster.
enum ClusterSkuNameEnum implements pulumi.PulumiEnum<String> {
  valueCapacityReservation("CapacityReservation");

  const ClusterSkuNameEnum(this.wireValue);
  @override
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
