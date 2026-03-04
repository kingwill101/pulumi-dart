/// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
enum HiveMetastoreConfigEndpointProtocolMetastoreV1beta {
  endpointProtocolUnspecified("ENDPOINT_PROTOCOL_UNSPECIFIED"),
  thrift("THRIFT"),
  grpc("GRPC");

  const HiveMetastoreConfigEndpointProtocolMetastoreV1beta(this.wireValue);
  final String wireValue;

  static HiveMetastoreConfigEndpointProtocolMetastoreV1beta fromValue(
    String value,
  ) {
    for (final item
        in HiveMetastoreConfigEndpointProtocolMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown HiveMetastoreConfigEndpointProtocolMetastoreV1beta value: $value',
    );
  }
}
