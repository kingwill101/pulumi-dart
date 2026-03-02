// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_network_route_route_args_doc}
class RouteArgs {
  /// The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  final pulumi.Input<String> addressPrefix;
  /// The name of the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  final pulumi.Input<String>? nextHopInIpAddress;
  /// The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  final pulumi.Input<String> nextHopType;
  /// The name of the resource group in which to create the route. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route table within which create the route. Changing this forces a new resource to be created.
  final pulumi.Input<String> routeTableName;

  /// Creates a new [RouteArgs].
  /// [addressPrefix] The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  /// [name] The name of the route. Changing this forces a new resource to be created.
  /// [nextHopInIpAddress] Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  /// [nextHopType] The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  /// [resourceGroupName] The name of the resource group in which to create the route. Changing this forces a new resource to be created.
  /// [routeTableName] The name of the route table within which create the route. Changing this forces a new resource to be created.
  RouteArgs({
    required this.addressPrefix,
    this.name,
    this.nextHopInIpAddress,
    required this.nextHopType,
    required this.resourceGroupName,
    required this.routeTableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'name': ?name,
      'nextHopInIpAddress': ?nextHopInIpAddress,
      'nextHopType': nextHopType,
      'resourceGroupName': resourceGroupName,
      'routeTableName': routeTableName,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      addressPrefix: (map['addressPrefix'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nextHopInIpAddress: map['nextHopInIpAddress'] == null ? null : (map['nextHopInIpAddress'] as String).input(),
      nextHopType: (map['nextHopType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeTableName: (map['routeTableName'] as String).input(),
    );
  }
}

