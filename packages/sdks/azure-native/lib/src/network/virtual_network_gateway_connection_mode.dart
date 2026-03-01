/// The connection mode for this connection.
enum VirtualNetworkGatewayConnectionMode {
  valueDefault("Default"),
  valueResponderOnly("ResponderOnly"),
  valueInitiatorOnly("InitiatorOnly");

  const VirtualNetworkGatewayConnectionMode(this.value);
  final String value;

  static VirtualNetworkGatewayConnectionMode fromValue(String value) {
    for (final item in VirtualNetworkGatewayConnectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayConnectionMode value: $value');
  }
}

