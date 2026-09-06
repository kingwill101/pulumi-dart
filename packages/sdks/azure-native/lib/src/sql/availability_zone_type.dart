import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the availability zone the pool's primary replica is pinned to.
enum AvailabilityZoneType implements pulumi.PulumiEnum<String> {
  valueNoPreference("NoPreference"),
  value1("1"),
  value2("2"),
  value3("3");

  const AvailabilityZoneType(this.wireValue);
  @override
  final String wireValue;

  static AvailabilityZoneType fromValue(String value) {
    for (final item in AvailabilityZoneType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityZoneType value: $value');
  }
}
