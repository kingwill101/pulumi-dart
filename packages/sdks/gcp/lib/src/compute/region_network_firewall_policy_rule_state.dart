// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_rule_match.dart';
import 'region_network_firewall_policy_rule_target_secure_tag.dart';

/// Input properties used for looking up and filtering RegionNetworkFirewallPolicyRule resources.
class RegionNetworkFirewallPolicyRuleState {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "gotoNext" and "applySecurityProfileGroup".
  final pulumi.Input<String?>? action;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description for this resource.
  final pulumi.Input<String?>? description;
  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String?>? direction;
  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  final pulumi.Input<bool?>? disabled;
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the configured export destination in Stackdriver.
  /// Logs may be exported to BigQuery or Pub/Sub.
  /// Note: you cannot enable logging on "gotoNext" rules.
  final pulumi.Input<bool?>? enableLogging;
  /// The firewall policy of the resource.
  final pulumi.Input<String?>? firewallPolicy;
  /// Type of the resource. Always `compute#firewallPolicyRule` for firewall policy rules
  final pulumi.Input<String?>? kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkFirewallPolicyRuleMatch?>? match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The location of this resource.
  final pulumi.Input<String?>? region;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String?>? ruleName;
  /// Calculation of the complexity of a single firewall policy rule.
  final pulumi.Input<int?>? ruleTupleCount;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  /// Security Profile Group and Firewall Policy Rule must be in the same scope.
  final pulumi.Input<String?>? securityProfileGroup;
  /// A list of forwarding rules to which this rule applies.
  /// This field allows you to control which load balancers get this rule.
  /// For example, the following are valid values:
  /// - https://www.googleapis.com/compute/v1/projects/project/global/forwardingRules/forwardingRule
  /// - https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// - projects/project/global/forwardingRules/forwardingRule
  /// - projects/project/regions/region/forwardingRules/forwardingRule
  final pulumi.Input<List<String>?>? targetForwardingRules;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>?>? targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>?>? targetServiceAccounts;
  /// Target types of the firewall policy rule.
  /// Default value is INSTANCES.
  /// When targetType is INTERNAL_MANAGED_LB, targetForwardingRules must be set
  /// Possible values are: `INSTANCES`, `INTERNAL_MANAGED_LB`.
  final pulumi.Input<String?>? targetType;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool?>? tlsInspect;

  /// Creates a new [RegionNetworkFirewallPolicyRuleState].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "gotoNext" and "applySecurityProfileGroup".
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled.
  /// [enableLogging] Denotes whether to enable logging for a particular rule.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [kind] Type of the resource. Always `compute#firewallPolicyRule` for firewall policy rules
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [ruleTupleCount] Calculation of the complexity of a single firewall policy rule.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetForwardingRules] A list of forwarding rules to which this rule applies.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  /// [targetType] Target types of the firewall policy rule.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  const RegionNetworkFirewallPolicyRuleState({
    this.action,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    this.firewallPolicy,
    this.kind,
    this.match,
    this.priority,
    this.project,
    this.region,
    this.ruleName,
    this.ruleTupleCount,
    this.securityProfileGroup,
    this.targetForwardingRules,
    this.targetSecureTags,
    this.targetServiceAccounts,
    this.targetType,
    this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'direction': ?direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'firewallPolicy': ?firewallPolicy,
      'kind': ?kind,
      'match': ?pulumi.Input.mapOptionalInputValue<RegionNetworkFirewallPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'region': ?region,
      'ruleName': ?ruleName,
      'ruleTupleCount': ?ruleTupleCount,
      'securityProfileGroup': ?securityProfileGroup,
      'targetForwardingRules': ?targetForwardingRules,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<RegionNetworkFirewallPolicyRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
      'targetType': ?targetType,
      'tlsInspect': ?tlsInspect,
    };
  }

  factory RegionNetworkFirewallPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionNetworkFirewallPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleTupleCount: (() { final guardedValue = map['ruleTupleCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      securityProfileGroup: (() { final guardedValue = map['securityProfileGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetForwardingRules: (() { final guardedValue = map['targetForwardingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSecureTags: (() { final guardedValue = map['targetSecureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkFirewallPolicyRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkFirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetServiceAccounts: (() { final guardedValue = map['targetServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsInspect: (() { final guardedValue = map['tlsInspect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
