// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule_collection.dart';

/// {@template pulumi_network_firewall_policy_rule_collection_group_args_doc}
/// The set of arguments for FirewallPolicyRuleCollectionGroup.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_collection_group_args_doc}
class FirewallPolicyRuleCollectionGroupArgs {
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
  final pulumi.Input<String>? ruleCollectionGroupName;
  /// Group of Firewall Policy rule collections.
  final pulumi.Input<List<FirewallPolicyFilterRuleCollection>>? ruleCollections;

  /// Creates a new [FirewallPolicyRuleCollectionGroupArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Collection Group resource.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionGroupName] The name of the FirewallPolicyRuleCollectionGroup.
  /// [ruleCollections] Group of Firewall Policy rule collections.
  FirewallPolicyRuleCollectionGroupArgs({
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
      'ruleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyFilterRuleCollection>, List<Map<String, dynamic>>>(ruleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyFilterRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleCollectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupArgs(
      firewallPolicyName: (map['firewallPolicyName'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleCollectionGroupName: map['ruleCollectionGroupName'] == null ? null : (map['ruleCollectionGroupName']! as String).input(),
      ruleCollections: map['ruleCollections'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyFilterRuleCollection>(map['ruleCollections']!, (value) => FirewallPolicyFilterRuleCollection.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

