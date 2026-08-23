// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule_collection.dart';

/// {@template pulumi_network_firewall_policy_rule_collection_group_draft_args_doc}
/// The set of arguments for FirewallPolicyRuleCollectionGroupDraft.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_collection_group_draft_args_doc}
class FirewallPolicyRuleCollectionGroupDraftArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  final pulumi.Input<int>? priority;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the FirewallPolicyRuleCollectionGroup.
  final pulumi.Input<String> ruleCollectionGroupName;
  /// Group of Firewall Policy rule collections.
  final pulumi.Input<List<FirewallPolicyFilterRuleCollection>>? ruleCollections;

  /// Creates a new [FirewallPolicyRuleCollectionGroupDraftArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Collection Group resource.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionGroupName] The name of the FirewallPolicyRuleCollectionGroup.
  /// [ruleCollections] Group of Firewall Policy rule collections.
  const FirewallPolicyRuleCollectionGroupDraftArgs({
    required this.firewallPolicyName,
    this.id,
    this.name,
    this.priority,
    required this.resourceGroupName,
    required this.ruleCollectionGroupName,
    this.ruleCollections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionGroupName': ruleCollectionGroupName,
      'ruleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyFilterRuleCollection>, List<Map<String, dynamic>>>(ruleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyFilterRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleCollectionGroupDraftArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupDraftArgs(
      firewallPolicyName: pulumi.Input.fromValue(map['firewallPolicyName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionGroupName: pulumi.Input.fromValue(map['ruleCollectionGroupName'] as String),
      ruleCollections: (() { final guardedValue = map['ruleCollections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyFilterRuleCollection>(guardedValue, (value) => FirewallPolicyFilterRuleCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
