// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_rule_match.dart';
import 'network_firewall_policy_rule_target_secure_tag.dart';

/// {@template pulumi_compute_network_firewall_policy_rule_network_firewall_policy_rule_args_doc}
/// The set of arguments for NetworkFirewallPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_compute_network_firewall_policy_rule_network_firewall_policy_rule_args_doc}
class NetworkFirewallPolicyRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "goto_next" and "apply_security_profile_group".
  final pulumi.Input<String> action;
  /// An optional description for this resource.
  final pulumi.Input<String>? description;
  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String> direction;
  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  final pulumi.Input<bool>? disabled;
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the configured export destination in Stackdriver.
  /// Logs may be exported to BigQuery or Pub/Sub.
  /// Note: you cannot enable logging on "goto_next" rules.
  final pulumi.Input<bool>? enableLogging;
  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<NetworkFirewallPolicyRuleMatch> match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  final pulumi.Input<String>? securityProfileGroup;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyRuleTargetSecureTag>>? targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [NetworkFirewallPolicyRuleArgs].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "goto_next" and "apply_security_profile_group".
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled.
  /// [enableLogging] Denotes whether to enable logging for a particular rule.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  NetworkFirewallPolicyRuleArgs({
    required pulumi.Output<String> action,
    pulumi.Output<String>? description,
    required pulumi.Output<String> direction,
    pulumi.Output<bool>? disabled,
    pulumi.Output<bool>? enableLogging,
    required pulumi.Output<String> firewallPolicy,
    required pulumi.Output<NetworkFirewallPolicyRuleMatch> match,
    required pulumi.Output<int> priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? securityProfileGroup,
    pulumi.Output<List<NetworkFirewallPolicyRuleTargetSecureTag>>? targetSecureTags,
    pulumi.Output<List<String>>? targetServiceAccounts,
    pulumi.Output<bool>? tlsInspect,
  }) :
      action = pulumi.Input.asInput<String>(action),
      description = pulumi.Input.asOptionalInput<String>(description),
      direction = pulumi.Input.asInput<String>(direction),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
      match = pulumi.Input.asInput<NetworkFirewallPolicyRuleMatch>(match),
      priority = pulumi.Input.asInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      securityProfileGroup = pulumi.Input.asOptionalInput<String>(securityProfileGroup),
      targetSecureTags = pulumi.Input.asOptionalInput<List<NetworkFirewallPolicyRuleTargetSecureTag>>(targetSecureTags),
      targetServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(targetServiceAccounts),
      tlsInspect = pulumi.Input.asOptionalInput<bool>(tlsInspect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'direction': direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'firewallPolicy': firewallPolicy,
      'match': pulumi.Input.mapInputValue<NetworkFirewallPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': priority,
      'project': ?project,
      'ruleName': ?ruleName,
      'securityProfileGroup': ?securityProfileGroup,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<NetworkFirewallPolicyRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<NetworkFirewallPolicyRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
      'tlsInspect': ?tlsInspect,
    };
  }

  factory NetworkFirewallPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyRuleArgs(
      action: pulumi.Output.create<String>(map['action'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      direction: pulumi.Output.create<String>(map['direction'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      firewallPolicy: pulumi.Output.create<String>(map['firewallPolicy'] as String),
      match: pulumi.Output.create<NetworkFirewallPolicyRuleMatch>(NetworkFirewallPolicyRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      securityProfileGroup: map['securityProfileGroup'] == null ? null : pulumi.Output.create<String>(map['securityProfileGroup'] as String),
      targetSecureTags: map['targetSecureTags'] == null ? null : pulumi.Output.create<List<NetworkFirewallPolicyRuleTargetSecureTag>>(pulumi.Input.decodeList<NetworkFirewallPolicyRuleTargetSecureTag>(map['targetSecureTags'], (value) => NetworkFirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['targetServiceAccounts'] as List).cast<String>()),
      tlsInspect: map['tlsInspect'] == null ? null : pulumi.Output.create<bool>(map['tlsInspect'] as bool),
    );
  }
}

