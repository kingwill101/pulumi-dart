/// The status of the virtual network peering.
enum VirtualNetworkPeeringState {
  valueInitiated("Initiated"),
  valueConnected("Connected"),
  valueDisconnected("Disconnected");

  const VirtualNetworkPeeringState(this.value);
  final String value;

  static VirtualNetworkPeeringState fromValue(String value) {
    for (final item in VirtualNetworkPeeringState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPeeringState value: $value');
  }
}

