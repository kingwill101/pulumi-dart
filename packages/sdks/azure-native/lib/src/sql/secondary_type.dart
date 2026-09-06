import 'package:pulumi/pulumi.dart' as pulumi;

/// The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
enum SecondaryType implements pulumi.PulumiEnum<String> {
  valueGeo("Geo"),
  valueNamed("Named"),
  valueStandby("Standby");

  const SecondaryType(this.wireValue);
  @override
  final String wireValue;

  static SecondaryType fromValue(String value) {
    for (final item in SecondaryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecondaryType value: $value');
  }
}
