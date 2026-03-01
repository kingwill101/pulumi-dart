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
  final pulumi.Input<String>? description;
  /// A `destination` block as defined below.
  final pulumi.Input<NetworkManagerRoutingRuleDestination> destination;
  /// The name of the Network Manager Routing Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `next_hop` block as defined below.
  final pulumi.Input<NetworkManagerRoutingRuleNextHop> nextHop;
  /// The ID of the Network Manager Routing Rule Collection to which this rule belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String> ruleCollectionId;

  /// Creates a new [NetworkManagerRoutingRuleArgs].
  /// [description] A description for the routing rule.
  /// [destination] A `destination` block as defined below.
  /// [name] The name of the Network Manager Routing Rule. Changing this forces a new resource to be created.
  /// [nextHop] A `next_hop` block as defined below.
  /// [ruleCollectionId] The ID of the Network Manager Routing Rule Collection to which this rule belongs. Changing this forces a new resource to be created.
  NetworkManagerRoutingRuleArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<NetworkManagerRoutingRuleDestination> destination,
    pulumi.Output<String>? name,
    required pulumi.Output<NetworkManagerRoutingRuleNextHop> nextHop,
    required pulumi.Output<String> ruleCollectionId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asInput<NetworkManagerRoutingRuleDestination>(destination),
      name = pulumi.Input.asOptionalInput<String>(name),
      nextHop = pulumi.Input.asInput<NetworkManagerRoutingRuleNextHop>(nextHop),
      ruleCollectionId = pulumi.Input.asInput<String>(ruleCollectionId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destination: pulumi.Output.create<NetworkManagerRoutingRuleDestination>(NetworkManagerRoutingRuleDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nextHop: pulumi.Output.create<NetworkManagerRoutingRuleNextHop>(NetworkManagerRoutingRuleNextHop.fromMap((map['nextHop'] as Map).cast<String, dynamic>())),
      ruleCollectionId: pulumi.Output.create<String>(map['ruleCollectionId'] as String),
    );
  }
}

