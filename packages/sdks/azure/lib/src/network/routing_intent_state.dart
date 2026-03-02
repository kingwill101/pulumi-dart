// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_intent_routing_policy.dart';

/// Input properties used for looking up and filtering RoutingIntent resources.
class RoutingIntentState {
  /// The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `routing_policy` blocks as defined below.
  final pulumi.Input<List<RoutingIntentRoutingPolicy>>? routingPolicies;
  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [RoutingIntentState].
  /// [name] The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  /// [routingPolicies] One or more `routing_policy` blocks as defined below.
  /// [virtualHubId] The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  RoutingIntentState({
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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      routingPolicies: map['routingPolicies'] == null ? null : (pulumi.Input.decodeList<RoutingIntentRoutingPolicy>(map['routingPolicies']!, (value) => RoutingIntentRoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualHubId: map['virtualHubId'] == null ? null : (map['virtualHubId']! as String).input(),
    );
  }
}

