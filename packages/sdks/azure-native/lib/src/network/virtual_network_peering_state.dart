import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the virtual network peering.
enum VirtualNetworkPeeringState implements pulumi.PulumiEnum<String> {
  valueInitiated("Initiated"),
  valueConnected("Connected"),
  valueDisconnected("Disconnected");

  const VirtualNetworkPeeringState(this.wireValue);
  @override
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
