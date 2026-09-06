import 'package:pulumi/pulumi.dart' as pulumi;

/// The peering sync status of the virtual network peering.
enum VirtualNetworkPeeringLevel implements pulumi.PulumiEnum<String> {
  valueFullyInSync("FullyInSync"),
  valueRemoteNotInSync("RemoteNotInSync"),
  valueLocalNotInSync("LocalNotInSync"),
  valueLocalAndRemoteNotInSync("LocalAndRemoteNotInSync");

  const VirtualNetworkPeeringLevel(this.wireValue);
  @override
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
