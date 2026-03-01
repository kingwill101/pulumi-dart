// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_nat_rule_collection_rule.dart';

/// Input properties used for looking up and filtering FirewallNatRuleCollection resources.
class FirewallNatRuleCollectionState {
  /// Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`.
  final pulumi.Input<String>? action;
  /// Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? azureFirewallName;
  /// Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  final pulumi.Input<int>? priority;
  /// Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `rule` blocks as defined below.
  final pulumi.Input<List<FirewallNatRuleCollectionRule>>? rules;

  /// Creates a new [FirewallNatRuleCollectionState].
  /// [action] Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`.
  /// [azureFirewallName] Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  /// [rules] One or more `rule` blocks as defined below.
  FirewallNatRuleCollectionState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? azureFirewallName,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<FirewallNatRuleCollectionRule>>? rules,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      azureFirewallName = pulumi.Input.asOptionalInput<String>(azureFirewallName),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      rules = pulumi.Input.asOptionalInput<List<FirewallNatRuleCollectionRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'azureFirewallName': ?azureFirewallName,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': ?resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallNatRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallNatRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallNatRuleCollectionState.fromMap(Map<String, dynamic> map) {
    return FirewallNatRuleCollectionState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      azureFirewallName: map['azureFirewallName'] == null ? null : pulumi.Output.create<String>(map['azureFirewallName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<FirewallNatRuleCollectionRule>>(pulumi.Input.decodeList<FirewallNatRuleCollectionRule>(map['rules'], (value) => FirewallNatRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

