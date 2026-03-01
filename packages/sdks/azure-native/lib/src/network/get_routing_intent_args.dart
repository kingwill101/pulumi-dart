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
  GetRoutingIntentArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routingIntentName,
    required pulumi.Output<String> virtualHubName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingIntentName = pulumi.Input.asInput<String>(routingIntentName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routingIntentName': routingIntentName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetRoutingIntentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutingIntentArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingIntentName: pulumi.Output.create<String>(map['routingIntentName'] as String),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

