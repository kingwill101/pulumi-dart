import 'package:pulumi/pulumi.dart' as pulumi;

/// Databases secondary type on partner server.
enum FailoverGroupDatabasesSecondaryType implements pulumi.PulumiEnum<String> {
  valueGeo("Geo"),
  valueStandby("Standby");

  const FailoverGroupDatabasesSecondaryType(this.wireValue);
  @override
  final String wireValue;

  static FailoverGroupDatabasesSecondaryType fromValue(String value) {
    for (final item in FailoverGroupDatabasesSecondaryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverGroupDatabasesSecondaryType value: $value');
  }
}
