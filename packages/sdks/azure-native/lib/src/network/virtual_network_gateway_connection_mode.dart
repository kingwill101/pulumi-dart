/// The connection mode for this connection.
enum VirtualNetworkGatewayConnectionMode {
  valueDefault("Default"),
  valueResponderOnly("ResponderOnly"),
  valueInitiatorOnly("InitiatorOnly");

  const VirtualNetworkGatewayConnectionMode(this.wireValue);
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
