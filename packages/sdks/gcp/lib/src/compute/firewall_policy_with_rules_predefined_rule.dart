// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_with_rules_predefined_rule_match.dart';
import 'firewall_policy_with_rules_predefined_rule_target_secure_tag.dart';

class FirewallPolicyWithRulesPredefinedRule {
  /// (Output)
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny", "apply_security_profile_group" or "goto_next".
  final pulumi.Input<String>? action;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// (Output)
  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  final pulumi.Input<String>? direction;
  /// (Output)
  /// Denotes whether the firewall policy rule is disabled. When set to true,
  /// the firewall policy rule is not enforced and traffic behaves as if it did
  /// not exist. If this is unspecified, the firewall policy rule will be
  /// enabled.
  final pulumi.Input<bool>? disabled;
  /// (Output)
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  final pulumi.Input<bool>? enableLogging;
  /// (Output)
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyWithRulesPredefinedRuleMatch>>? matches;
  /// (Output)
  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int>? priority;
  /// (Output)
  /// An optional name for the rule. This field is not a unique identifier
  /// and can be updated.
  final pulumi.Input<String>? ruleName;
  /// (Output)
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example:
  /// https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action is 'apply_security_profile_group'.
  final pulumi.Input<String>? securityProfileGroup;
  /// (Output)
  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  final pulumi.Input<List<String>>? targetResources;
  /// (Output)
  /// A list of secure tags that controls which instances the firewall rule
  /// applies to. If <code>targetSecureTag</code> are specified, then the
  /// firewall rule applies only to instances in the VPC network that have one
  /// of those EFFECTIVE secure tags, if all the target_secure_tag are in
  /// INEFFECTIVE state, then this rule will be ignored.
  /// <code>targetSecureTag</code> may not be set at the same time as
  /// <code>targetServiceAccounts</code>.
  /// If neither <code>targetServiceAccounts</code> nor
  /// <code>targetSecureTag</code> are specified, the firewall rule applies
  /// to all instances on the specified network.
  /// Maximum number of target secure tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyWithRulesPredefinedRuleTargetSecureTag>>? targetSecureTags;
  /// (Output)
  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;
  /// (Output)
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// It can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [FirewallPolicyWithRulesPredefinedRule].
  /// [action] (Output)
  /// [description] An optional description of this resource.
  /// [direction] (Output)
  /// [disabled] (Output)
  /// [enableLogging] (Output)
  /// [matches] (Output)
  /// [priority] (Output)
  /// [ruleName] (Output)
  /// [securityProfileGroup] (Output)
  /// [targetResources] (Output)
  /// [targetSecureTags] (Output)
  /// [targetServiceAccounts] (Output)
  /// [tlsInspect] (Output)
  FirewallPolicyWithRulesPredefinedRule({
    this.action,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    this.matches,
    this.priority,
    this.ruleName,
    this.securityProfileGroup,
    this.targetResources,
    this.targetSecureTags,
    this.targetServiceAccounts,
    this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'direction': ?direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'matches': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyWithRulesPredefinedRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<FirewallPolicyWithRulesPredefinedRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'ruleName': ?ruleName,
      'securityProfileGroup': ?securityProfileGroup,
      'targetResources': ?targetResources,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyWithRulesPredefinedRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<FirewallPolicyWithRulesPredefinedRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
      'tlsInspect': ?tlsInspect,
    };
  }

  factory FirewallPolicyWithRulesPredefinedRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyWithRulesPredefinedRule(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging'] as bool).input(),
      matches: map['matches'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyWithRulesPredefinedRuleMatch>(map['matches'], (value) => FirewallPolicyWithRulesPredefinedRuleMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      securityProfileGroup: map['securityProfileGroup'] == null ? null : (map['securityProfileGroup'] as String).input(),
      targetResources: map['targetResources'] == null ? null : ((map['targetResources'] as List).cast<String>()).input(),
      targetSecureTags: map['targetSecureTags'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyWithRulesPredefinedRuleTargetSecureTag>(map['targetSecureTags'], (value) => FirewallPolicyWithRulesPredefinedRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : ((map['targetServiceAccounts'] as List).cast<String>()).input(),
      tlsInspect: map['tlsInspect'] == null ? null : (map['tlsInspect'] as bool).input(),
    );
  }
}

