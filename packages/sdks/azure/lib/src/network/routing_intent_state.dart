// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_intent_routing_policy.dart';

/// Input properties used for looking up and filtering RoutingIntent resources.
class RoutingIntentState {
  /// The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// One or more `routingPolicy` blocks as defined below.
  final pulumi.Input<List<RoutingIntentRoutingPolicy>?>? routingPolicies;
  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? virtualHubId;

  /// Creates a new [RoutingIntentState].
  /// [name] The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  /// [routingPolicies] One or more `routingPolicy` blocks as defined below.
  /// [virtualHubId] The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  const RoutingIntentState({
    this.name,
    this.routingPolicies,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'routingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RoutingIntentRoutingPolicy>, List<Map<String, dynamic>>>(routingPolicies, (value) => pulumi.Input.encodeList<RoutingIntentRoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubId': ?virtualHubId,
    };
  }

  factory RoutingIntentState.fromMap(Map<String, dynamic> map) {
    return RoutingIntentState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicies: (() { final guardedValue = map['routingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingIntentRoutingPolicy>(guardedValue, (value) => RoutingIntentRoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
