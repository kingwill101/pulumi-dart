/// The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
enum SecondaryType {
  valueGeo("Geo"),
  valueNamed("Named"),
  valueStandby("Standby");

  const SecondaryType(this.wireValue);
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

