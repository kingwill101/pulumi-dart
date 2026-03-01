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
  FirewallPolicyRuleCollectionGroupDraftArgs({
    required pulumi.Output<String> firewallPolicyName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleCollectionGroupName,
    pulumi.Output<List<FirewallPolicyFilterRuleCollection>>? ruleCollections,
  }) :
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionGroupName = pulumi.Input.asInput<String>(ruleCollectionGroupName),
      ruleCollections = pulumi.Input.asOptionalInput<List<FirewallPolicyFilterRuleCollection>>(ruleCollections);

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
      firewallPolicyName: pulumi.Output.create<String>(map['firewallPolicyName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionGroupName: pulumi.Output.create<String>(map['ruleCollectionGroupName'] as String),
      ruleCollections: map['ruleCollections'] == null ? null : pulumi.Output.create<List<FirewallPolicyFilterRuleCollection>>(pulumi.Input.decodeList<FirewallPolicyFilterRuleCollection>(map['ruleCollections'], (value) => FirewallPolicyFilterRuleCollection.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

