import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection protocol used for this connection.
enum VirtualNetworkGatewayConnectionProtocol implements pulumi.PulumiEnum<String> {
  valueIKEv2("IKEv2"),
  valueIKEv1("IKEv1");

  const VirtualNetworkGatewayConnectionProtocol(this.wireValue);
  @override
  final String wireValue;

  static VirtualNetworkGatewayConnectionProtocol fromValue(String value) {
    for (final item in VirtualNetworkGatewayConnectionProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayConnectionProtocol value: $value');
  }
}
