enum AvailabilityZonePolicy {
  notSpecified("NotSpecified"),
  singleZoned("SingleZoned"),
  multiZoned("MultiZoned");

  const AvailabilityZonePolicy(this.wireValue);
  final String wireValue;

  static AvailabilityZonePolicy fromValue(String value) {
    for (final item in AvailabilityZonePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityZonePolicy value: $value');
  }
}
