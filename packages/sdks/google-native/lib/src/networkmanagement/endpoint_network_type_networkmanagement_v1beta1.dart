/// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
enum EndpointNetworkTypeNetworkmanagementV1beta1 {
  networkTypeUnspecified("NETWORK_TYPE_UNSPECIFIED"),
  gcpNetwork("GCP_NETWORK"),
  nonGcpNetwork("NON_GCP_NETWORK");

  const EndpointNetworkTypeNetworkmanagementV1beta1(this.value);
  final String value;

  static EndpointNetworkTypeNetworkmanagementV1beta1 fromValue(String value) {
    for (final item in EndpointNetworkTypeNetworkmanagementV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointNetworkTypeNetworkmanagementV1beta1 value: $value');
  }
}

