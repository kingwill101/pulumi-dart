/// Databases secondary type on partner server.
enum FailoverGroupDatabasesSecondaryType {
  valueGeo("Geo"),
  valueStandby("Standby");

  const FailoverGroupDatabasesSecondaryType(this.value);
  final String value;

  static FailoverGroupDatabasesSecondaryType fromValue(String value) {
    for (final item in FailoverGroupDatabasesSecondaryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverGroupDatabasesSecondaryType value: $value');
  }
}

