/// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
enum SecondaryInstanceType {
  valueGeo("Geo"),
  valueStandby("Standby");

  const SecondaryInstanceType(this.wireValue);
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

