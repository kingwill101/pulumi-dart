import 'package:pulumi/pulumi.dart' as pulumi;

/// Capacity policy.
enum CapacityPolicy implements pulumi.PulumiEnum<String> {
  default_("Default"),
  restricted("Restricted");

  const CapacityPolicy(this.wireValue);
  @override
  final String wireValue;

  static CapacityPolicy fromValue(String value) {
    for (final item in CapacityPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityPolicy value: $value');
  }
}
