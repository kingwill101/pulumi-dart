// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_response_compute_v1.dart';
import 'firewall_policy_rule_secure_tag_response_compute_v1.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
class FirewallPolicyRuleResponseComputeV1 {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny" and "goto_next".
  final pulumi.Input<String> action;
  /// An optional description for this resource.
  final pulumi.Input<String> description;
  /// The direction in which this rule applies.
  final pulumi.Input<String> direction;
  /// Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled.
  final pulumi.Input<bool> disabled;
  /// Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules.
  final pulumi.Input<bool> enableLogging;
  /// [Output only] Type of the resource. Always compute#firewallPolicyRule for firewall policy rules
  final pulumi.Input<String> kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  final pulumi.Input<FirewallPolicyRuleMatcherResponseComputeV1> match;
  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int> priority;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String> ruleName;
  /// Calculation of the complexity of a single firewall policy rule.
  final pulumi.Input<int> ruleTupleCount;
  /// A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule.
  final pulumi.Input<List<String>> targetResources;
  /// A list of secure tags that controls which instances the firewall rule applies to. If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  final pulumi.Input<List<FirewallPolicyRuleSecureTagResponseComputeV1>> targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>> targetServiceAccounts;

  /// Creates a new [FirewallPolicyRuleResponseComputeV1].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny" and "goto_next".
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled.
  /// [enableLogging] Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules.
  /// [kind] [Output only] Type of the resource. Always compute#firewallPolicyRule for firewall policy rules
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [ruleTupleCount] Calculation of the complexity of a single firewall policy rule.
  /// [targetResources] A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to. If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  FirewallPolicyRuleResponseComputeV1({
    required this.action,
    required this.description,
    required this.direction,
    required this.disabled,
    required this.enableLogging,
    required this.kind,
    required this.match,
    required this.priority,
    required this.ruleName,
    required this.ruleTupleCount,
    required this.targetResources,
    required this.targetSecureTags,
    required this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'direction': direction,
      'disabled': disabled,
      'enableLogging': enableLogging,
      'kind': kind,
      'match': pulumi.Input.mapInputValue<FirewallPolicyRuleMatcherResponseComputeV1, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': priority,
      'ruleName': ruleName,
      'ruleTupleCount': ruleTupleCount,
      'targetResources': targetResources,
      'targetSecureTags': pulumi.Input.mapInputValue<List<FirewallPolicyRuleSecureTagResponseComputeV1>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<FirewallPolicyRuleSecureTagResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': targetServiceAccounts,
    };
  }

  factory FirewallPolicyRuleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleResponseComputeV1(
      action: (map['action'] as String).input(),
      description: (map['description'] as String).input(),
      direction: (map['direction'] as String).input(),
      disabled: (map['disabled'] as bool).input(),
      enableLogging: (map['enableLogging'] as bool).input(),
      kind: (map['kind'] as String).input(),
      match: (FirewallPolicyRuleMatcherResponseComputeV1.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      priority: (map['priority'] as int).input(),
      ruleName: (map['ruleName'] as String).input(),
      ruleTupleCount: (map['ruleTupleCount'] as int).input(),
      targetResources: ((map['targetResources'] as List).cast<String>()).input(),
      targetSecureTags: (pulumi.Input.decodeList<FirewallPolicyRuleSecureTagResponseComputeV1>(map['targetSecureTags'], (value) => FirewallPolicyRuleSecureTagResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetServiceAccounts: ((map['targetServiceAccounts'] as List).cast<String>()).input(),
    );
  }
}

