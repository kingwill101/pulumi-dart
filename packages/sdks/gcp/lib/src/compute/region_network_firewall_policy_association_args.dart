// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_network_firewall_policy_association_region_network_firewall_policy_association_args_doc}
/// The set of arguments for RegionNetworkFirewallPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_firewall_policy_association_region_network_firewall_policy_association_args_doc}
class RegionNetworkFirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;
  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location of this resource.
  final pulumi.Input<String>? region;

  /// Creates a new [RegionNetworkFirewallPolicyAssociationArgs].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  RegionNetworkFirewallPolicyAssociationArgs({
    required this.attachmentTarget,
    required this.firewallPolicy,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': attachmentTarget,
      'firewallPolicy': firewallPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RegionNetworkFirewallPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyAssociationArgs(
      attachmentTarget: (map['attachmentTarget'] as String).input(),
      firewallPolicy: (map['firewallPolicy'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

