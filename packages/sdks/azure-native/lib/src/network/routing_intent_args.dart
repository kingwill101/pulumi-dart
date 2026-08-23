// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_policy.dart';

/// {@template pulumi_network_routing_intent_args_doc}
/// The set of arguments for RoutingIntent.
/// {@endtemplate}
/// {@macro pulumi_network_routing_intent_args_doc}
class RoutingIntentArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The resource group name of the RoutingIntent.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the per VirtualHub singleton Routing Intent resource.
  final pulumi.Input<String>? routingIntentName;
  /// List of routing policies.
  final pulumi.Input<List<RoutingPolicy>>? routingPolicies;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [RoutingIntentArgs].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The resource group name of the RoutingIntent.
  /// [routingIntentName] The name of the per VirtualHub singleton Routing Intent resource.
  /// [routingPolicies] List of routing policies.
  /// [virtualHubName] The name of the VirtualHub.
  const RoutingIntentArgs({
    this.id,
    this.name,
    required this.resourceGroupName,
    this.routingIntentName,
    this.routingPolicies,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routingIntentName': ?routingIntentName,
      'routingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RoutingPolicy>, List<Map<String, dynamic>>>(routingPolicies, (value) => pulumi.Input.encodeList<RoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubName': virtualHubName,
    };
  }

  factory RoutingIntentArgs.fromMap(Map<String, dynamic> map) {
    return RoutingIntentArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routingIntentName: (() { final guardedValue = map['routingIntentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicies: (() { final guardedValue = map['routingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingPolicy>(guardedValue, (value) => RoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
