import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of network connectivity used by the connection.
enum ConnectionType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const ConnectionType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}
