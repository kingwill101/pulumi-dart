/// The high availability type.
enum SAPHighAvailabilityType {
  availabilitySet("AvailabilitySet"),
  availabilityZone("AvailabilityZone");

  const SAPHighAvailabilityType(this.wireValue);
  final String wireValue;

  static SAPHighAvailabilityType fromValue(String value) {
    for (final item in SAPHighAvailabilityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPHighAvailabilityType value: $value');
  }
}

