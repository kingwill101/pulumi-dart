// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_rule_match.dart';
import 'region_network_firewall_policy_with_rules_rule_target_secure_tag.dart';

class RegionNetworkFirewallPolicyWithRulesRule {
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny", "applySecurityProfileGroup" or "gotoNext".
  final pulumi.Input<String> action;
  /// A description of the rule.
  final pulumi.Input<String?>? description;
  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String?>? direction;
  /// Denotes whether the firewall policy rule is disabled. When set to true,
  /// the firewall policy rule is not enforced and traffic behaves as if it did
  /// not exist. If this is unspecified, the firewall policy rule will be
  /// enabled.
  final pulumi.Input<bool?>? disabled;
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  final pulumi.Input<bool?>? enableLogging;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<RegionNetworkFirewallPolicyWithRulesRuleMatch> match;
  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int> priority;
  /// An optional name for the rule. This field is not a unique identifier
  /// and can be updated.
  final pulumi.Input<String?>? ruleName;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example:
  /// https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action is 'apply_security_profile_group'.
  final pulumi.Input<String?>? securityProfileGroup;
  /// A list of forwarding rules to which this rule applies.
  /// This field allows you to control which load balancers get this rule.
  /// For example, the following are valid values:
  /// - https://www.googleapis.com/compute/v1/projects/project/global/forwardingRules/forwardingRule
  /// - https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// - projects/project/global/forwardingRules/forwardingRule
  /// - projects/project/regions/region/forwardingRules/forwardingRule
  final pulumi.Input<List<String>?>? targetForwardingRules;
  /// A list of secure tags that controls which instances the firewall rule
  /// applies to. If &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, then the
  /// firewall rule applies only to instances in the VPC network that have one
  /// of those EFFECTIVE secure tags, if all the targetSecureTag are in
  /// INEFFECTIVE state, then this rule will be ignored.
  /// &lt;code&gt;targetSecureTag&lt;/code&gt; may not be set at the same time as
  /// &lt;code&gt;targetServiceAccounts&lt;/code&gt;.
  /// If neither &lt;code&gt;targetServiceAccounts&lt;/code&gt; nor
  /// &lt;code&gt;targetSecureTag&lt;/code&gt; are specified, the firewall rule applies
  /// to all instances on the specified network.
  /// Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTag>?>? targetSecureTags;
  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  final pulumi.Input<List<String>?>? targetServiceAccounts;
  /// Target types of the firewall policy rule.
  /// Default value is INSTANCES.
  /// When targetType is INTERNAL_MANAGED_LB, targetForwardingRules must be set
  /// Possible values are: `INSTANCES`, `INTERNAL_MANAGED_LB`.
  final pulumi.Input<String?>? targetType;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// It can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool?>? tlsInspect;

  /// Creates a new [RegionNetworkFirewallPolicyWithRulesRule].
  /// [action] The Action to perform when the client connection triggers the rule. Can currently be either
  /// [description] A description of the rule.
  /// [direction] The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// [disabled] Denotes whether the firewall policy rule is disabled. When set to true,
  /// [enableLogging] Denotes whether to enable logging for a particular rule.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a value
  /// [ruleName] An optional name for the rule. This field is not a unique identifier
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetForwardingRules] A list of forwarding rules to which this rule applies.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule
  /// [targetServiceAccounts] A list of service accounts indicating the sets of
  /// [targetType] Target types of the firewall policy rule.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  const RegionNetworkFirewallPolicyWithRulesRule({
    required this.action,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    required this.match,
    required this.priority,
    this.ruleName,
    this.securityProfileGroup,
    this.targetForwardingRules,
    this.targetSecureTags,
    this.targetServiceAccounts,
    this.targetType,
    this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'direction': ?direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'match': pulumi.Input.mapInputValue<RegionNetworkFirewallPolicyWithRulesRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': priority,
      'ruleName': ?ruleName,
      'securityProfileGroup': ?securityProfileGroup,
      'targetForwardingRules': ?targetForwardingRules,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
      'targetType': ?targetType,
      'tlsInspect': ?tlsInspect,
    };
  }

  factory RegionNetworkFirewallPolicyWithRulesRule.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyWithRulesRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: pulumi.Input.fromValue(RegionNetworkFirewallPolicyWithRulesRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfileGroup: (() { final guardedValue = map['securityProfileGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetForwardingRules: (() { final guardedValue = map['targetForwardingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSecureTags: (() { final guardedValue = map['targetSecureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkFirewallPolicyWithRulesRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetServiceAccounts: (() { final guardedValue = map['targetServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsInspect: (() { final guardedValue = map['tlsInspect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
