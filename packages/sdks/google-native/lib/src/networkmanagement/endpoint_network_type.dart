/// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
enum EndpointNetworkType {
  networkTypeUnspecified("NETWORK_TYPE_UNSPECIFIED"),
  gcpNetwork("GCP_NETWORK"),
  nonGcpNetwork("NON_GCP_NETWORK");

  const EndpointNetworkType(this.wireValue);
  final String wireValue;

  static EndpointNetworkType fromValue(String value) {
    for (final item in EndpointNetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointNetworkType value: $value');
  }
}
