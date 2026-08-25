// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_policy_traffic_classification_rule_action.dart';
import 'region_network_policy_traffic_classification_rule_match.dart';
import 'region_network_policy_traffic_classification_rule_target_secure_tag.dart';

/// {@template pulumi_compute_region_network_policy_traffic_classification_rule_region_network_policy_traffic_classification_rule_args_doc}
/// The set of arguments for RegionNetworkPolicyTrafficClassificationRule.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_policy_traffic_classification_rule_region_network_policy_traffic_classification_rule_args_doc}
class RegionNetworkPolicyTrafficClassificationRuleArgs {
  /// The Action to perform when the client connection triggers the rule.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkPolicyTrafficClassificationRuleAction?>? action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description for this resource.
  final pulumi.Input<String?>? description;
  /// Denotes whether the network policy rule is disabled.
  /// When set to true, the network policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the network policy rule will be enabled.
  final pulumi.Input<bool?>? disabled;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkPolicyTrafficClassificationRuleMatch> match;
  /// The firewall policy of the resource.
  final pulumi.Input<String> networkPolicy;
  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 1 and 2147482647.
  /// The priority values from 2147482648 to 2147483647 (1000) are reserved for system default network policy rules.
  /// Rules are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The location of this resource.
  final pulumi.Input<String?>? region;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String?>? ruleName;
  /// A list of secure tags that controls which instances the traffic classification rule applies to.
  /// If targetSecureTag are specified, then the traffic classification rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>?>? targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>?>? targetServiceAccounts;

  /// Creates a new [RegionNetworkPolicyTrafficClassificationRuleArgs].
  /// [action] The Action to perform when the client connection triggers the rule.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description for this resource.
  /// [disabled] Denotes whether the network policy rule is disabled.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [networkPolicy] The firewall policy of the resource.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a positive value between 1 and 2147482647.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [targetSecureTags] A list of secure tags that controls which instances the traffic classification rule applies to.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  const RegionNetworkPolicyTrafficClassificationRuleArgs({
    this.action,
    this.deletionPolicy,
    this.description,
    this.disabled,
    required this.match,
    required this.networkPolicy,
    required this.priority,
    this.project,
    this.region,
    this.ruleName,
    this.targetSecureTags,
    this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RegionNetworkPolicyTrafficClassificationRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'disabled': ?disabled,
      'match': pulumi.Input.mapInputValue<RegionNetworkPolicyTrafficClassificationRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'networkPolicy': networkPolicy,
      'priority': priority,
      'project': ?project,
      'region': ?region,
      'ruleName': ?ruleName,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
    };
  }

  factory RegionNetworkPolicyTrafficClassificationRuleArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyTrafficClassificationRuleArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionNetworkPolicyTrafficClassificationRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: pulumi.Input.fromValue(RegionNetworkPolicyTrafficClassificationRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      networkPolicy: pulumi.Input.fromValue(map['networkPolicy'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSecureTags: (() { final guardedValue = map['targetSecureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetServiceAccounts: (() { final guardedValue = map['targetServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
