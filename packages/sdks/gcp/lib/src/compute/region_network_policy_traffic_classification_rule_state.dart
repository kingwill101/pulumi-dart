// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_policy_traffic_classification_rule_action.dart';
import 'region_network_policy_traffic_classification_rule_match.dart';
import 'region_network_policy_traffic_classification_rule_target_secure_tag.dart';

/// Input properties used for looking up and filtering RegionNetworkPolicyTrafficClassificationRule resources.
class RegionNetworkPolicyTrafficClassificationRuleState {
  /// The Action to perform when the client connection triggers the rule.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkPolicyTrafficClassificationRuleAction>? action;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description for this resource.
  final pulumi.Input<String>? description;
  /// Denotes whether the network policy rule is disabled.
  /// When set to true, the network policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the network policy rule will be enabled.
  final pulumi.Input<bool>? disabled;
  /// Type of the resource. Alwayscompute#networkPolicyTrafficClassificationRule for network policy traffic classification rules
  final pulumi.Input<String>? kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkPolicyTrafficClassificationRuleMatch>? match;
  /// The firewall policy of the resource.
  final pulumi.Input<String>? networkPolicy;
  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 1 and 2147482647.
  /// The priority values from 2147482648 to 2147483647 (1000) are reserved for system default network policy rules.
  /// Rules are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location of this resource.
  final pulumi.Input<String>? region;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;
  /// Calculation of the complexity of a single network policy rule.
  final pulumi.Input<int>? ruleTupleCount;
  /// A list of secure tags that controls which instances the traffic classification rule applies to.
  /// If targetSecureTag are specified, then the traffic classification rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>>? targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;

  /// Creates a new [RegionNetworkPolicyTrafficClassificationRuleState].
  /// [action] The Action to perform when the client connection triggers the rule.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description for this resource.
  /// [disabled] Denotes whether the network policy rule is disabled.
  /// [kind] Type of the resource. Alwayscompute#networkPolicyTrafficClassificationRule for network policy traffic classification rules
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [networkPolicy] The firewall policy of the resource.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a positive value between 1 and 2147482647.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [ruleTupleCount] Calculation of the complexity of a single network policy rule.
  /// [targetSecureTags] A list of secure tags that controls which instances the traffic classification rule applies to.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  const RegionNetworkPolicyTrafficClassificationRuleState({
    this.action,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.disabled,
    this.kind,
    this.match,
    this.networkPolicy,
    this.priority,
    this.project,
    this.region,
    this.ruleName,
    this.ruleTupleCount,
    this.targetSecureTags,
    this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RegionNetworkPolicyTrafficClassificationRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'disabled': ?disabled,
      'kind': ?kind,
      'match': ?pulumi.Input.mapOptionalInputValue<RegionNetworkPolicyTrafficClassificationRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'networkPolicy': ?networkPolicy,
      'priority': ?priority,
      'project': ?project,
      'region': ?region,
      'ruleName': ?ruleName,
      'ruleTupleCount': ?ruleTupleCount,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
    };
  }

  factory RegionNetworkPolicyTrafficClassificationRuleState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyTrafficClassificationRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionNetworkPolicyTrafficClassificationRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionNetworkPolicyTrafficClassificationRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkPolicy: (() { final guardedValue = map['networkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleTupleCount: (() { final guardedValue = map['ruleTupleCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSecureTags: (() { final guardedValue = map['targetSecureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetServiceAccounts: (() { final guardedValue = map['targetServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
