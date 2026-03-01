// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_match.dart';
import 'firewall_policy_rule_target_secure_tag.dart';

/// Input properties used for looking up and filtering FirewallPolicyRule resources.
class FirewallPolicyRuleState {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "goto_next" and "apply_security_profile_group".
  final pulumi.Input<String>? action;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description for this resource.
  final pulumi.Input<String>? description;
  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String>? direction;
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
  final pulumi.Input<String>? firewallPolicy;
  /// Type of the resource. Always `compute#firewallPolicyRule` for firewall policy rules
  final pulumi.Input<String>? kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<FirewallPolicyRuleMatch>? match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int>? priority;
  /// Calculation of the complexity of a single firewall policy rule.
  final pulumi.Input<int>? ruleTupleCount;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  final pulumi.Input<String>? securityProfileGroup;
  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get this rule.
  /// If this field is left blank, all VMs within the organization will receive the rule.
  final pulumi.Input<List<String>>? targetResources;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target secure tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyRuleTargetSecureTag>>? targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [FirewallPolicyRuleState].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "goto_next" and "apply_security_profile_group".
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled.
  /// [enableLogging] Denotes whether to enable logging for a particular rule.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [kind] Type of the resource. Always `compute#firewallPolicyRule` for firewall policy rules
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [ruleTupleCount] Calculation of the complexity of a single firewall policy rule.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetResources] A list of network resource URLs to which this rule applies.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  FirewallPolicyRuleState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? disabled,
    pulumi.Output<bool>? enableLogging,
    pulumi.Output<String>? firewallPolicy,
    pulumi.Output<String>? kind,
    pulumi.Output<FirewallPolicyRuleMatch>? match,
    pulumi.Output<int>? priority,
    pulumi.Output<int>? ruleTupleCount,
    pulumi.Output<String>? securityProfileGroup,
    pulumi.Output<List<String>>? targetResources,
    pulumi.Output<List<FirewallPolicyRuleTargetSecureTag>>? targetSecureTags,
    pulumi.Output<List<String>>? targetServiceAccounts,
    pulumi.Output<bool>? tlsInspect,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
      firewallPolicy = pulumi.Input.asOptionalInput<String>(firewallPolicy),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      match = pulumi.Input.asOptionalInput<FirewallPolicyRuleMatch>(match),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      ruleTupleCount = pulumi.Input.asOptionalInput<int>(ruleTupleCount),
      securityProfileGroup = pulumi.Input.asOptionalInput<String>(securityProfileGroup),
      targetResources = pulumi.Input.asOptionalInput<List<String>>(targetResources),
      targetSecureTags = pulumi.Input.asOptionalInput<List<FirewallPolicyRuleTargetSecureTag>>(targetSecureTags),
      targetServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(targetServiceAccounts),
      tlsInspect = pulumi.Input.asOptionalInput<bool>(tlsInspect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'direction': ?direction,
      'disabled': ?disabled,
      'enableLogging': ?enableLogging,
      'firewallPolicy': ?firewallPolicy,
      'kind': ?kind,
      'match': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': ?priority,
      'ruleTupleCount': ?ruleTupleCount,
      'securityProfileGroup': ?securityProfileGroup,
      'targetResources': ?targetResources,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<FirewallPolicyRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
      'tlsInspect': ?tlsInspect,
    };
  }

  factory FirewallPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      firewallPolicy: map['firewallPolicy'] == null ? null : pulumi.Output.create<String>(map['firewallPolicy'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      match: map['match'] == null ? null : pulumi.Output.create<FirewallPolicyRuleMatch>(FirewallPolicyRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : pulumi.Output.create<int>(map['ruleTupleCount'] as int),
      securityProfileGroup: map['securityProfileGroup'] == null ? null : pulumi.Output.create<String>(map['securityProfileGroup'] as String),
      targetResources: map['targetResources'] == null ? null : pulumi.Output.create<List<String>>((map['targetResources'] as List).cast<String>()),
      targetSecureTags: map['targetSecureTags'] == null ? null : pulumi.Output.create<List<FirewallPolicyRuleTargetSecureTag>>(pulumi.Input.decodeList<FirewallPolicyRuleTargetSecureTag>(map['targetSecureTags'], (value) => FirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['targetServiceAccounts'] as List).cast<String>()),
      tlsInspect: map['tlsInspect'] == null ? null : pulumi.Output.create<bool>(map['tlsInspect'] as bool),
    );
  }
}

