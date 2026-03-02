// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_firewall_policy_association_network_firewall_policy_association_args_doc}
/// The set of arguments for NetworkFirewallPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_network_firewall_policy_association_network_firewall_policy_association_args_doc}
class NetworkFirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;
  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NetworkFirewallPolicyAssociationArgs].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [project] The ID of the project in which the resource belongs.
  NetworkFirewallPolicyAssociationArgs({
    required this.attachmentTarget,
    required this.firewallPolicy,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': attachmentTarget,
      'firewallPolicy': firewallPolicy,
      'name': ?name,
      'project': ?project,
    };
  }

  factory NetworkFirewallPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyAssociationArgs(
      attachmentTarget: (map['attachmentTarget'] as String).input(),
      firewallPolicy: (map['firewallPolicy'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

