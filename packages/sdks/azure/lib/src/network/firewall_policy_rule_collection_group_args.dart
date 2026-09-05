// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection.dart';
import 'firewall_policy_rule_collection_group_nat_rule_collection.dart';
import 'firewall_policy_rule_collection_group_network_rule_collection.dart';

/// {@template pulumi_network_firewall_policy_rule_collection_group_firewall_policy_rule_collection_group_args_doc}
/// The set of arguments for FirewallPolicyRuleCollectionGroup.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_collection_group_firewall_policy_rule_collection_group_args_doc}
class FirewallPolicyRuleCollectionGroupArgs {
  /// One or more `applicationRuleCollection` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>?>? applicationRuleCollections;
  /// The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String> firewallPolicyId;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String?>? name;
  /// One or more `natRuleCollection` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>?>? natRuleCollections;
  /// One or more `networkRuleCollection` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>?>? networkRuleCollections;
  /// The priority of the Firewall Policy Rule Collection Group. The range is 100-65000.
  final pulumi.Input<int> priority;

  /// Creates a new [FirewallPolicyRuleCollectionGroupArgs].
  /// [applicationRuleCollections] One or more `applicationRuleCollection` blocks as defined below.
  /// [firewallPolicyId] The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [name] The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [natRuleCollections] One or more `natRuleCollection` blocks as defined below.
  /// [networkRuleCollections] One or more `networkRuleCollection` blocks as defined below.
  /// [priority] The priority of the Firewall Policy Rule Collection Group. The range is 100-65000.
  const FirewallPolicyRuleCollectionGroupArgs({
    this.applicationRuleCollections,
    required this.firewallPolicyId,
    this.name,
    this.natRuleCollections,
    this.networkRuleCollections,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>, List<Map<String, dynamic>>>(applicationRuleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallPolicyId': firewallPolicyId,
      'name': ?name,
      'natRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>, List<Map<String, dynamic>>>(natRuleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNatRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkRuleCollections': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>, List<Map<String, dynamic>>>(networkRuleCollections, (value) => pulumi.Input.encodeList<FirewallPolicyRuleCollectionGroupNetworkRuleCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
    };
  }

  factory FirewallPolicyRuleCollectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupArgs(
      applicationRuleCollections: (() { final guardedValue = map['applicationRuleCollections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>(guardedValue, (value) => FirewallPolicyRuleCollectionGroupApplicationRuleCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      firewallPolicyId: pulumi.Input.fromValue(map['firewallPolicyId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natRuleCollections: (() { final guardedValue = map['natRuleCollections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNatRuleCollection>(guardedValue, (value) => FirewallPolicyRuleCollectionGroupNatRuleCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkRuleCollections: (() { final guardedValue = map['networkRuleCollections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>(guardedValue, (value) => FirewallPolicyRuleCollectionGroupNetworkRuleCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
    );
  }
}
