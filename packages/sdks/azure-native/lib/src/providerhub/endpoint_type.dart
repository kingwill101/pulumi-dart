/// The endpoint type.
enum EndpointType {
  notSpecified("NotSpecified"),
  canary("Canary"),
  production("Production"),
  testInProduction("TestInProduction");

  const EndpointType(this.wireValue);
  final String wireValue;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}
