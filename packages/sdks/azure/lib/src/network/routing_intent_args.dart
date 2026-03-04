// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_intent_routing_policy.dart';

/// {@template pulumi_network_routing_intent_routing_intent_args_doc}
/// The set of arguments for RoutingIntent.
/// {@endtemplate}
/// {@macro pulumi_network_routing_intent_routing_intent_args_doc}
class RoutingIntentArgs {
  /// The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// One or more `routing_policy` blocks as defined below.
  final pulumi.Input<List<RoutingIntentRoutingPolicy>> routingPolicies;

  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [RoutingIntentArgs].
  /// [name] The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  /// [routingPolicies] One or more `routing_policy` blocks as defined below.
  /// [virtualHubId] The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  RoutingIntentArgs({
    this.name,
    required this.routingPolicies,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'routingPolicies':
          pulumi.Input.mapInputValue<
            List<RoutingIntentRoutingPolicy>,
            List<Map<String, dynamic>>
          >(
            routingPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  RoutingIntentRoutingPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'virtualHubId': virtualHubId,
    };
  }

  factory RoutingIntentArgs.fromMap(Map<String, dynamic> map) {
    return RoutingIntentArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routingPolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RoutingIntentRoutingPolicy>(
          map['routingPolicies']!,
          (value) => RoutingIntentRoutingPolicy.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      virtualHubId: pulumi.Input.fromValue(map['virtualHubId'] as String),
    );
  }
}
