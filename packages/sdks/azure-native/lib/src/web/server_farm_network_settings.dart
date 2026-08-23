// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network settings for an app service plan.
class ServerFarmNetworkSettings {
  /// Azure Resource Manager ID of the Virtual network and subnet to be joined by Regional VNET Integration. This must be of the form /subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [ServerFarmNetworkSettings].
  /// [virtualNetworkSubnetId] Azure Resource Manager ID of the Virtual network and subnet to be joined by Regional VNET Integration. This must be of the form /subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}
  const ServerFarmNetworkSettings({
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory ServerFarmNetworkSettings.fromMap(Map<String, dynamic> map) {
    return ServerFarmNetworkSettings(
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
