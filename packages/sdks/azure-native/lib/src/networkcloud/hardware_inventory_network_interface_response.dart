// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HardwareInventoryNetworkInterfaceResponse {
  /// The current status of the link.
  final pulumi.Input<String> linkStatus;
  /// The MAC address associated with this interface.
  final pulumi.Input<String> macAddress;
  /// The name of the interface.
  final pulumi.Input<String> name;
  /// The resource ID of the network interface for the port on the switch that this machine's interface is connected to.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [HardwareInventoryNetworkInterfaceResponse].
  /// [linkStatus] The current status of the link.
  /// [macAddress] The MAC address associated with this interface.
  /// [name] The name of the interface.
  /// [networkInterfaceId] The resource ID of the network interface for the port on the switch that this machine's interface is connected to.
  HardwareInventoryNetworkInterfaceResponse({
    required this.linkStatus,
    required this.macAddress,
    required this.name,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkStatus': linkStatus,
      'macAddress': macAddress,
      'name': name,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory HardwareInventoryNetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return HardwareInventoryNetworkInterfaceResponse(
      linkStatus: (map['linkStatus'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      name: (map['name'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
    );
  }
}

