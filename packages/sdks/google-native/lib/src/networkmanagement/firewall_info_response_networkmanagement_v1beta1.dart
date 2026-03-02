// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a VPC firewall rule, an implied VPC firewall rule, or a hierarchical firewall policy rule.
class FirewallInfoResponseNetworkmanagementV1beta1 {
  /// Possible values: ALLOW, DENY
  final pulumi.Input<String> action;
  /// Possible values: INGRESS, EGRESS
  final pulumi.Input<String> direction;
  /// The display name of the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.
  final pulumi.Input<String> displayName;
  /// The firewall rule's type.
  final pulumi.Input<String> firewallRuleType;
  /// The URI of the VPC network that the firewall rule is associated with. This field is not applicable to hierarchical firewall policy rules.
  final pulumi.Input<String> networkUri;
  /// The hierarchical firewall policy that this rule is associated with. This field is not applicable to VPC firewall rules.
  final pulumi.Input<String> policy;
  /// The priority of the firewall rule.
  final pulumi.Input<int> priority;
  /// The target service accounts specified by the firewall rule.
  final pulumi.Input<List<String>> targetServiceAccounts;
  /// The target tags defined by the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.
  final pulumi.Input<List<String>> targetTags;
  /// The URI of the VPC firewall rule. This field is not applicable to implied firewall rules or hierarchical firewall policy rules.
  final pulumi.Input<String> uri;

  /// Creates a new [FirewallInfoResponseNetworkmanagementV1beta1].
  /// [action] Possible values: ALLOW, DENY
  /// [direction] Possible values: INGRESS, EGRESS
  /// [displayName] The display name of the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.
  /// [firewallRuleType] The firewall rule's type.
  /// [networkUri] The URI of the VPC network that the firewall rule is associated with. This field is not applicable to hierarchical firewall policy rules.
  /// [policy] The hierarchical firewall policy that this rule is associated with. This field is not applicable to VPC firewall rules.
  /// [priority] The priority of the firewall rule.
  /// [targetServiceAccounts] The target service accounts specified by the firewall rule.
  /// [targetTags] The target tags defined by the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.
  /// [uri] The URI of the VPC firewall rule. This field is not applicable to implied firewall rules or hierarchical firewall policy rules.
  FirewallInfoResponseNetworkmanagementV1beta1({
    required this.action,
    required this.direction,
    required this.displayName,
    required this.firewallRuleType,
    required this.networkUri,
    required this.policy,
    required this.priority,
    required this.targetServiceAccounts,
    required this.targetTags,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'direction': direction,
      'displayName': displayName,
      'firewallRuleType': firewallRuleType,
      'networkUri': networkUri,
      'policy': policy,
      'priority': priority,
      'targetServiceAccounts': targetServiceAccounts,
      'targetTags': targetTags,
      'uri': uri,
    };
  }

  factory FirewallInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return FirewallInfoResponseNetworkmanagementV1beta1(
      action: (map['action'] as String).input(),
      direction: (map['direction'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      firewallRuleType: (map['firewallRuleType'] as String).input(),
      networkUri: (map['networkUri'] as String).input(),
      policy: (map['policy'] as String).input(),
      priority: (map['priority'] as int).input(),
      targetServiceAccounts: ((map['targetServiceAccounts'] as List).cast<String>()).input(),
      targetTags: ((map['targetTags'] as List).cast<String>()).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

