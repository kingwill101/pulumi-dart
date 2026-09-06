// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_network_route_args_doc}
class RouteArgs {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String?>? addressPrefix;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String?>? nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<dynamic> nextHopType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route.
  final pulumi.Input<String?>? routeName;
  /// The name of the route table.
  final pulumi.Input<String> routeTableName;
  /// The type of the resource.
  final pulumi.Input<String?>? type;

  /// Creates a new [RouteArgs].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [nextHopIpAddress] The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  /// [resourceGroupName] The name of the resource group.
  /// [routeName] The name of the route.
  /// [routeTableName] The name of the route table.
  /// [type] The type of the resource.
  const RouteArgs({
    this.addressPrefix,
    this.id,
    this.name,
    this.nextHopIpAddress,
    required this.nextHopType,
    required this.resourceGroupName,
    this.routeName,
    required this.routeTableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'id': ?id,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
      'nextHopType': nextHopType,
      'resourceGroupName': resourceGroupName,
      'routeName': ?routeName,
      'routeTableName': routeTableName,
      'type': ?type,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIpAddress: (() { final guardedValue = map['nextHopIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopType: pulumi.Input.fromValue(map['nextHopType']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableName: pulumi.Input.fromValue(map['routeTableName'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
