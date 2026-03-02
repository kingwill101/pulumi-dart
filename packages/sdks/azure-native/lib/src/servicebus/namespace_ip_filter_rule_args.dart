// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_ip_filter_rule_args_doc}
/// The set of arguments for NamespaceIpFilterRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_ip_filter_rule_args_doc}
class NamespaceIpFilterRuleArgs {
  /// The IP Filter Action
  final pulumi.Input<String>? action;
  /// IP Filter name
  final pulumi.Input<String>? filterName;
  /// The IP Filter Rule name.
  final pulumi.Input<String>? ipFilterRuleName;
  /// IP Mask
  final pulumi.Input<String>? ipMask;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NamespaceIpFilterRuleArgs].
  /// [action] The IP Filter Action
  /// [filterName] IP Filter name
  /// [ipFilterRuleName] The IP Filter Rule name.
  /// [ipMask] IP Mask
  /// [namespaceName] The namespace name
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  NamespaceIpFilterRuleArgs({
    this.action,
    this.filterName,
    this.ipFilterRuleName,
    this.ipMask,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'filterName': ?filterName,
      'ipFilterRuleName': ?ipFilterRuleName,
      'ipMask': ?ipMask,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NamespaceIpFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceIpFilterRuleArgs(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      filterName: map['filterName'] == null ? null : (map['filterName']! as String).input(),
      ipFilterRuleName: map['ipFilterRuleName'] == null ? null : (map['ipFilterRuleName']! as String).input(),
      ipMask: map['ipMask'] == null ? null : (map['ipMask']! as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

