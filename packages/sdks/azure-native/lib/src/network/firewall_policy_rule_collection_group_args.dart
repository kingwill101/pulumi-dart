// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_firewall_policy_rule_collection_group_args_doc}
/// The set of arguments for FirewallPolicyRuleCollectionGroup.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_collection_group_args_doc}
class FirewallPolicyRuleCollectionGroupArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  final pulumi.Input<int?>? priority;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the FirewallPolicyRuleCollectionGroup.
  final pulumi.Input<String?>? ruleCollectionGroupName;
  /// Group of Firewall Policy rule collections.
  final pulumi.Input<List<dynamic>?>? ruleCollections;

  /// Creates a new [FirewallPolicyRuleCollectionGroupArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Collection Group resource.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionGroupName] The name of the FirewallPolicyRuleCollectionGroup.
  /// [ruleCollections] Group of Firewall Policy rule collections.
  const FirewallPolicyRuleCollectionGroupArgs({
    required this.firewallPolicyName,
    this.id,
    this.name,
    this.priority,
    required this.resourceGroupName,
    this.ruleCollectionGroupName,
    this.ruleCollections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionGroupName': ?ruleCollectionGroupName,
      'ruleCollections': ?ruleCollections,
    };
  }

  factory FirewallPolicyRuleCollectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupArgs(
      firewallPolicyName: pulumi.Input.fromValue(map['firewallPolicyName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionGroupName: (() { final guardedValue = map['ruleCollectionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleCollections: (() { final guardedValue = map['ruleCollections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
