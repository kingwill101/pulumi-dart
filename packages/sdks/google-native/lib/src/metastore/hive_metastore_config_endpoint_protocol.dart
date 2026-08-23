/// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
enum HiveMetastoreConfigEndpointProtocol {
  endpointProtocolUnspecified("ENDPOINT_PROTOCOL_UNSPECIFIED"),
  thrift("THRIFT"),
  grpc("GRPC");

  const HiveMetastoreConfigEndpointProtocol(this.wireValue);
  final String wireValue;

  static HiveMetastoreConfigEndpointProtocol fromValue(String value) {
    for (final item in HiveMetastoreConfigEndpointProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveMetastoreConfigEndpointProtocol value: $value');
  }
}
