// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_application_rule_collection_rule.dart';

/// Input properties used for looking up and filtering FirewallApplicationRuleCollection resources.
class FirewallApplicationRuleCollectionState {
  /// Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String>? action;

  /// Specifies the name of the Firewall in which the Application Rule Collection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? azureFirewallName;

  /// Specifies the name of the Application Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  final pulumi.Input<int>? priority;

  /// Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// One or more `rule` blocks as defined below.
  final pulumi.Input<List<FirewallApplicationRuleCollectionRule>>? rules;

  /// Creates a new [FirewallApplicationRuleCollectionState].
  /// [action] Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`.
  /// [azureFirewallName] Specifies the name of the Firewall in which the Application Rule Collection should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Application Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  /// [rules] One or more `rule` blocks as defined below.
  FirewallApplicationRuleCollectionState({
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
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallApplicationRuleCollectionRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallApplicationRuleCollectionRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FirewallApplicationRuleCollectionState.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallApplicationRuleCollectionState(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureFirewallName: (() {
        final guardedValue = map['azureFirewallName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FirewallApplicationRuleCollectionRule>(
            guardedValue,
            (value) => FirewallApplicationRuleCollectionRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
