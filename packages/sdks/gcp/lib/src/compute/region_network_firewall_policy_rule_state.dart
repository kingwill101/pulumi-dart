// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_rule_match.dart';
import 'region_network_firewall_policy_rule_target_secure_tag.dart';

/// Input properties used for looking up and filtering RegionNetworkFirewallPolicyRule resources.
class RegionNetworkFirewallPolicyRuleState {
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
  final pulumi.Input<RegionNetworkFirewallPolicyRuleMatch>? match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location of this resource.
  final pulumi.Input<String>? region;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;
  /// Calculation of the complexity of a single firewall policy rule.
  final pulumi.Input<int>? ruleTupleCount;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  /// Security Profile Group and Firewall Policy Rule must be in the same scope.
  final pulumi.Input<String>? securityProfileGroup;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>>? targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [RegionNetworkFirewallPolicyRuleState].
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
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [ruleTupleCount] Calculation of the complexity of a single firewall policy rule.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  RegionNetworkFirewallPolicyRuleState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? disabled,
    pulumi.Output<bool>? enableLogging,
    pulumi.Output<String>? firewallPolicy,
    pulumi.Output<String>? kind,
    pulumi.Output<RegionNetworkFirewallPolicyRuleMatch>? match,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleTupleCount,
    pulumi.Output<String>? securityProfileGroup,
    pulumi.Output<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>>? targetSecureTags,
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
      match = pulumi.Input.asOptionalInput<RegionNetworkFirewallPolicyRuleMatch>(match),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleTupleCount = pulumi.Input.asOptionalInput<int>(ruleTupleCount),
      securityProfileGroup = pulumi.Input.asOptionalInput<String>(securityProfileGroup),
      targetSecureTags = pulumi.Input.asOptionalInput<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>>(targetSecureTags),
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
      'match': ?pulumi.Input.mapOptionalInputValue<RegionNetworkFirewallPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'region': ?region,
      'ruleName': ?ruleName,
      'ruleTupleCount': ?ruleTupleCount,
      'securityProfileGroup': ?securityProfileGroup,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<RegionNetworkFirewallPolicyRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetServiceAccounts': ?targetServiceAccounts,
      'tlsInspect': ?tlsInspect,
    };
  }

  factory RegionNetworkFirewallPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyRuleState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      firewallPolicy: map['firewallPolicy'] == null ? null : pulumi.Output.create<String>(map['firewallPolicy'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      match: map['match'] == null ? null : pulumi.Output.create<RegionNetworkFirewallPolicyRuleMatch>(RegionNetworkFirewallPolicyRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : pulumi.Output.create<int>(map['ruleTupleCount'] as int),
      securityProfileGroup: map['securityProfileGroup'] == null ? null : pulumi.Output.create<String>(map['securityProfileGroup'] as String),
      targetSecureTags: map['targetSecureTags'] == null ? null : pulumi.Output.create<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>>(pulumi.Input.decodeList<RegionNetworkFirewallPolicyRuleTargetSecureTag>(map['targetSecureTags'], (value) => RegionNetworkFirewallPolicyRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['targetServiceAccounts'] as List).cast<String>()),
      tlsInspect: map['tlsInspect'] == null ? null : pulumi.Output.create<bool>(map['tlsInspect'] as bool),
    );
  }
}

