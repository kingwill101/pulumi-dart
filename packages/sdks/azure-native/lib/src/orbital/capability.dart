/// Capability of the Ground Station.
enum Capability {
  valueEarthObservation("EarthObservation"),
  valueCommunication("Communication");

  const Capability(this.wireValue);
  final String wireValue;

  static Capability fromValue(String value) {
    for (final item in Capability.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Capability value: $value');
  }
}

