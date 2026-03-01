// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  final pulumi.Input<String>? addressPrefix;
  /// The name of the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  final pulumi.Input<String>? nextHopInIpAddress;
  /// The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  final pulumi.Input<String>? nextHopType;
  /// The name of the resource group in which to create the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the route table within which create the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? routeTableName;

  /// Creates a new [RouteState].
  /// [addressPrefix] The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  /// [name] The name of the route. Changing this forces a new resource to be created.
  /// [nextHopInIpAddress] Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  /// [nextHopType] The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  /// [resourceGroupName] The name of the resource group in which to create the route. Changing this forces a new resource to be created.
  /// [routeTableName] The name of the route table within which create the route. Changing this forces a new resource to be created.
  RouteState({
    pulumi.Output<String>? addressPrefix,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nextHopInIpAddress,
    pulumi.Output<String>? nextHopType,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? routeTableName,
  }) :
      addressPrefix = pulumi.Input.asOptionalInput<String>(addressPrefix),
      name = pulumi.Input.asOptionalInput<String>(name),
      nextHopInIpAddress = pulumi.Input.asOptionalInput<String>(nextHopInIpAddress),
      nextHopType = pulumi.Input.asOptionalInput<String>(nextHopType),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'name': ?name,
      'nextHopInIpAddress': ?nextHopInIpAddress,
      'nextHopType': ?nextHopType,
      'resourceGroupName': ?resourceGroupName,
      'routeTableName': ?routeTableName,
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      addressPrefix: map['addressPrefix'] == null ? null : pulumi.Output.create<String>(map['addressPrefix'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nextHopInIpAddress: map['nextHopInIpAddress'] == null ? null : pulumi.Output.create<String>(map['nextHopInIpAddress'] as String),
      nextHopType: map['nextHopType'] == null ? null : pulumi.Output.create<String>(map['nextHopType'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeTableName: map['routeTableName'] == null ? null : pulumi.Output.create<String>(map['routeTableName'] as String),
    );
  }
}

