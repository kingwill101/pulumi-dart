// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_network_rule_collection_rule.dart';

/// Input properties used for looking up and filtering FirewallNetworkRuleCollection resources.
class FirewallNetworkRuleCollectionState {
  /// Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String>? action;
  /// Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? azureFirewallName;
  /// Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  final pulumi.Input<int>? priority;
  /// Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `rule` blocks as defined below.
  final pulumi.Input<List<FirewallNetworkRuleCollectionRule>>? rules;

  /// Creates a new [FirewallNetworkRuleCollectionState].
  /// [action] Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  /// [azureFirewallName] Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  /// [rules] One or more `rule` blocks as defined below.
  FirewallNetworkRuleCollectionState({
    this.action,
    this.azureFirewallName,
    this.name,
    this.priority,
    this.resourceGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'azureFirewallName': ?azureFirewallName,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': ?resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallNetworkRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallNetworkRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallNetworkRuleCollectionState.fromMap(Map<String, dynamic> map) {
    return FirewallNetworkRuleCollectionState(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      azureFirewallName: map['azureFirewallName'] == null ? null : (map['azureFirewallName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<FirewallNetworkRuleCollectionRule>(map['rules']!, (value) => FirewallNetworkRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

