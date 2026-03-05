/// Required. Runtime type of the Apigee organization based on the Apigee subscription purchased.
enum OrganizationRuntimeType {
  runtimeTypeUnspecified("RUNTIME_TYPE_UNSPECIFIED"),
  cloud("CLOUD"),
  hybrid("HYBRID");

  const OrganizationRuntimeType(this.wireValue);
  final String wireValue;

  static OrganizationRuntimeType fromValue(String value) {
    for (final item in OrganizationRuntimeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationRuntimeType value: $value');
  }
}

