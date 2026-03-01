/// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
enum EndpointNetworkType {
  networkTypeUnspecified("NETWORK_TYPE_UNSPECIFIED"),
  gcpNetwork("GCP_NETWORK"),
  nonGcpNetwork("NON_GCP_NETWORK");

  const EndpointNetworkType(this.value);
  final String value;

  static EndpointNetworkType fromValue(String value) {
    for (final item in EndpointNetworkType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointNetworkType value: $value');
  }
}

