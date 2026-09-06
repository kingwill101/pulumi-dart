import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
enum SecondaryInstanceType implements pulumi.PulumiEnum<String> {
  valueGeo("Geo"),
  valueStandby("Standby");

  const SecondaryInstanceType(this.wireValue);
  @override
  final String wireValue;

  static SecondaryInstanceType fromValue(String value) {
    for (final item in SecondaryInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecondaryInstanceType value: $value');
  }
}
