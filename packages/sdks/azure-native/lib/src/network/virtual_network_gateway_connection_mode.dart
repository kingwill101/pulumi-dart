import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection mode for this connection.
enum VirtualNetworkGatewayConnectionMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueResponderOnly("ResponderOnly"),
  valueInitiatorOnly("InitiatorOnly");

  const VirtualNetworkGatewayConnectionMode(this.wireValue);
  @override
  final String wireValue;

  static VirtualNetworkGatewayConnectionMode fromValue(String value) {
    for (final item in VirtualNetworkGatewayConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayConnectionMode value: $value');
  }
}
