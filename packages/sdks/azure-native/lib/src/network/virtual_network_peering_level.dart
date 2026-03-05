/// The peering sync status of the virtual network peering.
enum VirtualNetworkPeeringLevel {
  valueFullyInSync("FullyInSync"),
  valueRemoteNotInSync("RemoteNotInSync"),
  valueLocalNotInSync("LocalNotInSync"),
  valueLocalAndRemoteNotInSync("LocalAndRemoteNotInSync");

  const VirtualNetworkPeeringLevel(this.wireValue);
  final String wireValue;

  static VirtualNetworkPeeringLevel fromValue(String value) {
    for (final item in VirtualNetworkPeeringLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPeeringLevel value: $value');
  }
}

