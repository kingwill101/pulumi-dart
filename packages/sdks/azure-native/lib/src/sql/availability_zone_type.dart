/// Specifies the availability zone the pool's primary replica is pinned to.
enum AvailabilityZoneType {
  valueNoPreference("NoPreference"),
  value1("1"),
  value2("2"),
  value3("3");

  const AvailabilityZoneType(this.wireValue);
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
