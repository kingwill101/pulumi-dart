/// The endpoint type.
enum EndpointTypeResourceType {
  notSpecified("NotSpecified"),
  canary("Canary"),
  production("Production"),
  testInProduction("TestInProduction");

  const EndpointTypeResourceType(this.wireValue);
  final String wireValue;

  static EndpointTypeResourceType fromValue(String value) {
    for (final item in EndpointTypeResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointTypeResourceType value: $value');
  }
}

