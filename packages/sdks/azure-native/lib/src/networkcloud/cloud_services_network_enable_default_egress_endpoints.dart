/// The indicator of whether the platform default endpoints are allowed for the egress traffic.
enum CloudServicesNetworkEnableDefaultEgressEndpoints {
  valueTrue("True"),
  valueFalse("False");

  const CloudServicesNetworkEnableDefaultEgressEndpoints(this.wireValue);
  final String wireValue;

  static CloudServicesNetworkEnableDefaultEgressEndpoints fromValue(String value) {
    for (final item in CloudServicesNetworkEnableDefaultEgressEndpoints.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudServicesNetworkEnableDefaultEgressEndpoints value: $value');
  }
}
