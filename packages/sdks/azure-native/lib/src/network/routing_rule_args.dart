// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_rule_next_hop.dart';
import 'routing_rule_route_destination.dart';

/// {@template pulumi_network_routing_rule_args_doc}
/// The set of arguments for RoutingRule.
/// {@endtemplate}
/// {@macro pulumi_network_routing_rule_args_doc}
class RoutingRuleArgs {
  /// The name of the network manager Routing Configuration.
  final pulumi.Input<String> configurationName;
  /// A description for this rule.
  final pulumi.Input<String?>? description;
  /// Indicates the destination for this particular rule.
  final pulumi.Input<RoutingRuleRouteDestination> destination;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Indicates the next hop for this particular rule.
  final pulumi.Input<RoutingRuleNextHop> nextHop;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager routing Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String?>? ruleName;

  /// Creates a new [RoutingRuleArgs].
  /// [configurationName] The name of the network manager Routing Configuration.
  /// [description] A description for this rule.
  /// [destination] Indicates the destination for this particular rule.
  /// [networkManagerName] The name of the network manager.
  /// [nextHop] Indicates the next hop for this particular rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager routing Configuration rule collection.
  /// [ruleName] The name of the rule.
  const RoutingRuleArgs({
    required this.configurationName,
    this.description,
    required this.destination,
    required this.networkManagerName,
    required this.nextHop,
    required this.resourceGroupName,
    required this.ruleCollectionName,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'description': ?description,
      'destination': pulumi.Input.mapInputValue<RoutingRuleRouteDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'networkManagerName': networkManagerName,
      'nextHop': pulumi.Input.mapInputValue<RoutingRuleNextHop, Map<String, dynamic>>(nextHop, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ?ruleName,
    };
  }

  factory RoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return RoutingRuleArgs(
      configurationName: pulumi.Input.fromValue(map['configurationName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(RoutingRuleRouteDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      nextHop: pulumi.Input.fromValue(RoutingRuleNextHop.fromMap((map['nextHop']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Input.fromValue(map['ruleCollectionName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
