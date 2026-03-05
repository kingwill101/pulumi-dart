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
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallNatRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallNatRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallNatRuleCollectionState.fromMap(Map<String, dynamic> map) {
    return FirewallNatRuleCollectionState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureFirewallName: (() { final guardedValue = map['azureFirewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallNatRuleCollectionRule>(guardedValue, (value) => FirewallNatRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

