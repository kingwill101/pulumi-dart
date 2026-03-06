// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_routing_intent_args_doc}
/// Arguments for getRoutingIntent.
/// {@endtemplate}
/// {@macro pulumi_network_get_routing_intent_args_doc}
class GetRoutingIntentArgs {
  /// The resource group name of the RoutingIntent.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the RoutingIntent.
  final pulumi.Input<String> routingIntentName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetRoutingIntentArgs].
  /// [resourceGroupName] The resource group name of the RoutingIntent.
  /// [routingIntentName] The name of the RoutingIntent.
  /// [virtualHubName] The name of the VirtualHub.
  const GetRoutingIntentArgs({
    required this.resourceGroupName,
    required this.routingIntentName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routingIntentName': routingIntentName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetRoutingIntentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutingIntentArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routingIntentName: pulumi.Input.fromValue(map['routingIntentName'] as String),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}

