// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_rule_destination.dart';
import 'network_manager_routing_rule_next_hop.dart';

/// {@template pulumi_network_network_manager_routing_rule_network_manager_routing_rule_args_doc}
/// The set of arguments for NetworkManagerRoutingRule.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_routing_rule_network_manager_routing_rule_args_doc}
class NetworkManagerRoutingRuleArgs {
  /// A description for the routing rule.
  final pulumi.Input<String?>? description;
  /// A `destination` block as defined below.
  final pulumi.Input<NetworkManagerRoutingRuleDestination> destination;
  /// The name of the Network Manager Routing Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `nextHop` block as defined below.
  final pulumi.Input<NetworkManagerRoutingRuleNextHop> nextHop;
  /// The ID of the Network Manager Routing Rule Collection to which this rule belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> ruleCollectionId;

  /// Creates a new [NetworkManagerRoutingRuleArgs].
  /// [description] A description for the routing rule.
  /// [destination] A `destination` block as defined below.
  /// [name] The name of the Network Manager Routing Rule. Changing this forces a new resource to be created.
  /// [nextHop] A `nextHop` block as defined below.
  /// [ruleCollectionId] The ID of the Network Manager Routing Rule Collection to which this rule belongs. Changing this forces a new resource to be created.
  const NetworkManagerRoutingRuleArgs({
    this.description,
    required this.destination,
    this.name,
    required this.nextHop,
    required this.ruleCollectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destination': pulumi.Input.mapInputValue<NetworkManagerRoutingRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'name': ?name,
      'nextHop': pulumi.Input.mapInputValue<NetworkManagerRoutingRuleNextHop, Map<String, dynamic>>(nextHop, (value) => value.toMap()),
      'ruleCollectionId': ruleCollectionId,
    };
  }

  factory NetworkManagerRoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingRuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(NetworkManagerRoutingRuleDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHop: pulumi.Input.fromValue(NetworkManagerRoutingRuleNextHop.fromMap((map['nextHop']! as Map).cast<String, dynamic>())),
      ruleCollectionId: pulumi.Input.fromValue(map['ruleCollectionId'] as String),
    );
  }
}
