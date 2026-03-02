// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_rule_destination.dart';
import 'network_manager_routing_rule_next_hop.dart';

/// Input properties used for looking up and filtering NetworkManagerRoutingRule resources.
class NetworkManagerRoutingRuleState {
  /// A description for the routing rule.
  final pulumi.Input<String>? description;
  /// A `destination` block as defined below.
  final pulumi.Input<NetworkManagerRoutingRuleDestination>? destination;
  /// The name of the Network Manager Routing Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `next_hop` block as defined below.
  final pulumi.Input<NetworkManagerRoutingRuleNextHop>? nextHop;
  /// The ID of the Network Manager Routing Rule Collection to which this rule belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String>? ruleCollectionId;

  /// Creates a new [NetworkManagerRoutingRuleState].
  /// [description] A description for the routing rule.
  /// [destination] A `destination` block as defined below.
  /// [name] The name of the Network Manager Routing Rule. Changing this forces a new resource to be created.
  /// [nextHop] A `next_hop` block as defined below.
  /// [ruleCollectionId] The ID of the Network Manager Routing Rule Collection to which this rule belongs. Changing this forces a new resource to be created.
  NetworkManagerRoutingRuleState({
    this.description,
    this.destination,
    this.name,
    this.nextHop,
    this.ruleCollectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destination': ?pulumi.Input.mapOptionalInputValue<NetworkManagerRoutingRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'name': ?name,
      'nextHop': ?pulumi.Input.mapOptionalInputValue<NetworkManagerRoutingRuleNextHop, Map<String, dynamic>>(nextHop, (value) => value.toMap()),
      'ruleCollectionId': ?ruleCollectionId,
    };
  }

  factory NetworkManagerRoutingRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingRuleState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destination: map['destination'] == null ? null : (NetworkManagerRoutingRuleDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nextHop: map['nextHop'] == null ? null : (NetworkManagerRoutingRuleNextHop.fromMap((map['nextHop']! as Map).cast<String, dynamic>())).input(),
      ruleCollectionId: map['ruleCollectionId'] == null ? null : (map['ruleCollectionId']! as String).input(),
    );
  }
}

