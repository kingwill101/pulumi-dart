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
  RoutingIntentArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routingIntentName,
    pulumi.Output<List<RoutingPolicy>>? routingPolicies,
    required pulumi.Output<String> virtualHubName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingIntentName = pulumi.Input.asOptionalInput<String>(routingIntentName),
      routingPolicies = pulumi.Input.asOptionalInput<List<RoutingPolicy>>(routingPolicies),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

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
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingIntentName: map['routingIntentName'] == null ? null : pulumi.Output.create<String>(map['routingIntentName'] as String),
      routingPolicies: map['routingPolicies'] == null ? null : pulumi.Output.create<List<RoutingPolicy>>(pulumi.Input.decodeList<RoutingPolicy>(map['routingPolicies'], (value) => RoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

