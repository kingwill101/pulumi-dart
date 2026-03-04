// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_packet_mirroring_rule_match.dart';
import 'network_firewall_policy_packet_mirroring_rule_target_secure_tag.dart';

/// {@template pulumi_compute_network_firewall_policy_packet_mirroring_rule_network_firewall_policy_packet_mirroring_rule_args_doc}
/// The set of arguments for NetworkFirewallPolicyPacketMirroringRule.
/// {@endtemplate}
/// {@macro pulumi_compute_network_firewall_policy_packet_mirroring_rule_network_firewall_policy_packet_mirroring_rule_args_doc}
class NetworkFirewallPolicyPacketMirroringRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
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

  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<NetworkFirewallPolicyPacketMirroringRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'mirror' and cannot be specified for other actions.
  final pulumi.Input<String>? securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<
    List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>
  >?
  targetSecureTags;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'mirror' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [NetworkFirewallPolicyPacketMirroringRuleArgs].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  NetworkFirewallPolicyPacketMirroringRuleArgs({
    required this.action,
    this.description,
    required this.direction,
    this.disabled,
    required this.firewallPolicy,
    required this.match,
    required this.priority,
    this.project,
    this.ruleName,
    this.securityProfileGroup,
    this.targetSecureTags,
    this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'direction': direction,
      'disabled': ?disabled,
      'firewallPolicy': firewallPolicy,
      'match':
          pulumi.Input.mapInputValue<
            NetworkFirewallPolicyPacketMirroringRuleMatch,
            Map<String, dynamic>
          >(match, (value) => value.toMap()),
      'priority': priority,
      'project': ?project,
      'ruleName': ?ruleName,
      'securityProfileGroup': ?securityProfileGroup,
      'targetSecureTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>,
            List<Map<String, dynamic>>
          >(
            targetSecureTags,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tlsInspect': ?tlsInspect,
    };
  }

  factory NetworkFirewallPolicyPacketMirroringRuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkFirewallPolicyPacketMirroringRuleArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      firewallPolicy: pulumi.Input.fromValue(map['firewallPolicy'] as String),
      match: pulumi.Input.fromValue(
        NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap(
          (map['match']! as Map).cast<String, dynamic>(),
        ),
      ),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityProfileGroup: (() {
        final guardedValue = map['securityProfileGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetSecureTags: (() {
        final guardedValue = map['targetSecureTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag
          >(
            guardedValue,
            (value) =>
                NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      tlsInspect: (() {
        final guardedValue = map['tlsInspect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
