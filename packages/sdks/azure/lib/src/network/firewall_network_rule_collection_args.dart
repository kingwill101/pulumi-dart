// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_network_rule_collection_rule.dart';

/// {@template pulumi_network_firewall_network_rule_collection_firewall_network_rule_collection_args_doc}
/// The set of arguments for FirewallNetworkRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_network_rule_collection_firewall_network_rule_collection_args_doc}
class FirewallNetworkRuleCollectionArgs {
  /// Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> action;
  /// Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> azureFirewallName;
  /// Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  final pulumi.Input<int> priority;
  /// Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `rule` blocks as defined below.
  final pulumi.Input<List<FirewallNetworkRuleCollectionRule>> rules;

  /// Creates a new [FirewallNetworkRuleCollectionArgs].
  /// [action] Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  /// [azureFirewallName] Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  /// [rules] One or more `rule` blocks as defined below.
  FirewallNetworkRuleCollectionArgs({
    required this.action,
    required this.azureFirewallName,
    this.name,
    required this.priority,
    required this.resourceGroupName,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'azureFirewallName': azureFirewallName,
      'name': ?name,
      'priority': priority,
      'resourceGroupName': resourceGroupName,
      'rules': pulumi.Input.mapInputValue<List<FirewallNetworkRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallNetworkRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallNetworkRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return FirewallNetworkRuleCollectionArgs(
      action: (map['action'] as String).input(),
      azureFirewallName: (map['azureFirewallName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rules: (pulumi.Input.decodeList<FirewallNetworkRuleCollectionRule>(map['rules'], (value) => FirewallNetworkRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

