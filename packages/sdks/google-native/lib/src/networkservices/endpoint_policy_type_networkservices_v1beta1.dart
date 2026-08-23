/// Required. The type of endpoint policy. This is primarily used to validate the configuration.
enum EndpointPolicyTypeNetworkservicesV1beta1 {
  endpointPolicyTypeUnspecified("ENDPOINT_POLICY_TYPE_UNSPECIFIED"),
  sidecarProxy("SIDECAR_PROXY"),
  grpcServer("GRPC_SERVER");

  const EndpointPolicyTypeNetworkservicesV1beta1(this.wireValue);
  final String wireValue;

  static EndpointPolicyTypeNetworkservicesV1beta1 fromValue(String value) {
    for (final item in EndpointPolicyTypeNetworkservicesV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointPolicyTypeNetworkservicesV1beta1 value: $value');
  }
}
