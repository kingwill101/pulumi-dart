import 'package:pulumi/pulumi.dart' as pulumi;

/// Offline data transfer
enum FeatureStatus implements pulumi.PulumiEnum<String> {
  on("on"),
  off("off");

  const FeatureStatus(this.wireValue);
  @override
  final String wireValue;

  static FeatureStatus fromValue(String value) {
    for (final item in FeatureStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureStatus value: $value');
  }
}
