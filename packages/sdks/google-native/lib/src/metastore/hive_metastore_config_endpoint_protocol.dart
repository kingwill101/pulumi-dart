import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
enum HiveMetastoreConfigEndpointProtocol implements pulumi.PulumiEnum<String> {
  endpointProtocolUnspecified("ENDPOINT_PROTOCOL_UNSPECIFIED"),
  thrift("THRIFT"),
  grpc("GRPC");

  const HiveMetastoreConfigEndpointProtocol(this.wireValue);
  @override
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
