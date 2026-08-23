// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network settings for an app service plan.
class ServerFarmNetworkSettingsResponse {
  /// Azure Resource Manager ID of the Virtual network and subnet to be joined by Regional VNET Integration. This must be of the form /subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [ServerFarmNetworkSettingsResponse].
  /// [virtualNetworkSubnetId] Azure Resource Manager ID of the Virtual network and subnet to be joined by Regional VNET Integration. This must be of the form /subscriptions/{subscriptionName}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}
  const ServerFarmNetworkSettingsResponse({
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory ServerFarmNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerFarmNetworkSettingsResponse(
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
