// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule.dart';

/// {@template pulumi_network_route_map_args_doc}
/// The set of arguments for RouteMap.
/// {@endtemplate}
/// {@macro pulumi_network_route_map_args_doc}
class RouteMapArgs {
  /// List of connections which have this RoutMap associated for inbound traffic.
  final pulumi.Input<List<String>>? associatedInboundConnections;
  /// List of connections which have this RoutMap associated for outbound traffic.
  final pulumi.Input<List<String>>? associatedOutboundConnections;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The resource group name of the RouteMap's resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the RouteMap.
  final pulumi.Input<String>? routeMapName;
  /// List of RouteMap rules to be applied.
  final pulumi.Input<List<RouteMapRule>>? rules;
  /// The name of the VirtualHub containing the RouteMap.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [RouteMapArgs].
  /// [associatedInboundConnections] List of connections which have this RoutMap associated for inbound traffic.
  /// [associatedOutboundConnections] List of connections which have this RoutMap associated for outbound traffic.
  /// [id] Resource ID.
  /// [resourceGroupName] The resource group name of the RouteMap's resource group.
  /// [routeMapName] The name of the RouteMap.
  /// [rules] List of RouteMap rules to be applied.
  /// [virtualHubName] The name of the VirtualHub containing the RouteMap.
  const RouteMapArgs({
    this.associatedInboundConnections,
    this.associatedOutboundConnections,
    this.id,
    required this.resourceGroupName,
    this.routeMapName,
    this.rules,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedInboundConnections': ?associatedInboundConnections,
      'associatedOutboundConnections': ?associatedOutboundConnections,
      'id': ?id,
      'resourceGroupName': resourceGroupName,
      'routeMapName': ?routeMapName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouteMapRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubName': virtualHubName,
    };
  }

  factory RouteMapArgs.fromMap(Map<String, dynamic> map) {
    return RouteMapArgs(
      associatedInboundConnections: (() { final guardedValue = map['associatedInboundConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      associatedOutboundConnections: (() { final guardedValue = map['associatedOutboundConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeMapName: (() { final guardedValue = map['routeMapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteMapRule>(guardedValue, (value) => RouteMapRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}

