/// Required. The type of endpoint policy. This is primarily used to validate the configuration.
enum EndpointPolicyType {
  endpointPolicyTypeUnspecified("ENDPOINT_POLICY_TYPE_UNSPECIFIED"),
  sidecarProxy("SIDECAR_PROXY"),
  grpcServer("GRPC_SERVER");

  const EndpointPolicyType(this.wireValue);
  final String wireValue;

  static EndpointPolicyType fromValue(String value) {
    for (final item in EndpointPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointPolicyType value: $value');
  }
}
