import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
enum ClusterSkuName implements pulumi.PulumiEnum<String> {
  valueDefault("Default");

  const ClusterSkuName(this.wireValue);
  @override
  final String wireValue;

  static ClusterSkuName fromValue(String value) {
    for (final item in ClusterSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSkuName value: $value');
  }
}
