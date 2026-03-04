/// The status of the virtual network peering.
enum VirtualNetworkPeeringState {
  valueInitiated("Initiated"),
  valueConnected("Connected"),
  valueDisconnected("Disconnected");

  const VirtualNetworkPeeringState(this.wireValue);
  final String wireValue;

  static VirtualNetworkPeeringState fromValue(String value) {
    for (final item in VirtualNetworkPeeringState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPeeringState value: $value');
  }
}
