/// Connection protocol used for this connection.
enum VirtualNetworkGatewayConnectionProtocol {
  valueIKEv2("IKEv2"),
  valueIKEv1("IKEv1");

  const VirtualNetworkGatewayConnectionProtocol(this.value);
  final String value;

  static VirtualNetworkGatewayConnectionProtocol fromValue(String value) {
    for (final item in VirtualNetworkGatewayConnectionProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewayConnectionProtocol value: $value');
  }
}

