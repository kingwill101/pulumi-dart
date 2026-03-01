// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_packet_mirroring_rule_match.dart';
import 'network_firewall_policy_packet_mirroring_rule_target_secure_tag.dart';

/// Input properties used for looking up and filtering NetworkFirewallPolicyPacketMirroringRule resources.
class NetworkFirewallPolicyPacketMirroringRuleState {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
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
  /// The firewall policy of the resource.
  final pulumi.Input<String>? firewallPolicy;
  /// Type of the resource. Always `compute#packetMirroringRule` for firewall policy packet mirroring rules
  final pulumi.Input<String>? kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<NetworkFirewallPolicyPacketMirroringRuleMatch>? match;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;
  /// Calculation of the complexity of a single firewall policy rule.
  final pulumi.Input<int>? ruleTupleCount;
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'mirror' and cannot be specified for other actions.
  final pulumi.Input<String>? securityProfileGroup;
  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>>? targetSecureTags;
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'mirror' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [NetworkFirewallPolicyPacketMirroringRuleState].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [kind] Type of the resource. Always `compute#packetMirroringRule` for firewall policy packet mirroring rules
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [ruleTupleCount] Calculation of the complexity of a single firewall policy rule.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  NetworkFirewallPolicyPacketMirroringRuleState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? firewallPolicy,
    pulumi.Output<String>? kind,
    pulumi.Output<NetworkFirewallPolicyPacketMirroringRuleMatch>? match,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleTupleCount,
    pulumi.Output<String>? securityProfileGroup,
    pulumi.Output<List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>>? targetSecureTags,
    pulumi.Output<bool>? tlsInspect,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      firewallPolicy = pulumi.Input.asOptionalInput<String>(firewallPolicy),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      match = pulumi.Input.asOptionalInput<NetworkFirewallPolicyPacketMirroringRuleMatch>(match),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleTupleCount = pulumi.Input.asOptionalInput<int>(ruleTupleCount),
      securityProfileGroup = pulumi.Input.asOptionalInput<String>(securityProfileGroup),
      targetSecureTags = pulumi.Input.asOptionalInput<List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>>(targetSecureTags),
      tlsInspect = pulumi.Input.asOptionalInput<bool>(tlsInspect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'direction': ?direction,
      'disabled': ?disabled,
      'firewallPolicy': ?firewallPolicy,
      'kind': ?kind,
      'match': ?pulumi.Input.mapOptionalInputValue<NetworkFirewallPolicyPacketMirroringRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'ruleName': ?ruleName,
      'ruleTupleCount': ?ruleTupleCount,
      'securityProfileGroup': ?securityProfileGroup,
      'targetSecureTags': ?pulumi.Input.mapOptionalInputValue<List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>, List<Map<String, dynamic>>>(targetSecureTags, (value) => pulumi.Input.encodeList<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tlsInspect': ?tlsInspect,
    };
  }

  factory NetworkFirewallPolicyPacketMirroringRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyPacketMirroringRuleState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      firewallPolicy: map['firewallPolicy'] == null ? null : pulumi.Output.create<String>(map['firewallPolicy'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      match: map['match'] == null ? null : pulumi.Output.create<NetworkFirewallPolicyPacketMirroringRuleMatch>(NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : pulumi.Output.create<int>(map['ruleTupleCount'] as int),
      securityProfileGroup: map['securityProfileGroup'] == null ? null : pulumi.Output.create<String>(map['securityProfileGroup'] as String),
      targetSecureTags: map['targetSecureTags'] == null ? null : pulumi.Output.create<List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>>(pulumi.Input.decodeList<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>(map['targetSecureTags'], (value) => NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>()))),
      tlsInspect: map['tlsInspect'] == null ? null : pulumi.Output.create<bool>(map['tlsInspect'] as bool),
    );
  }
}

