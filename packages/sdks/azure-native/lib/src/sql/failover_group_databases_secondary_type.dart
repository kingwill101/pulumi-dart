/// Databases secondary type on partner server.
enum FailoverGroupDatabasesSecondaryType {
  valueGeo("Geo"),
  valueStandby("Standby");

  const FailoverGroupDatabasesSecondaryType(this.wireValue);
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

