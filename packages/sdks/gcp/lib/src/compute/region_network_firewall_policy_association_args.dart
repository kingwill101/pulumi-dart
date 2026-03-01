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
    required pulumi.Output<String> attachmentTarget,
    required pulumi.Output<String> firewallPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      attachmentTarget = pulumi.Input.asInput<String>(attachmentTarget),
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      attachmentTarget: pulumi.Output.create<String>(map['attachmentTarget'] as String),
      firewallPolicy: pulumi.Output.create<String>(map['firewallPolicy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

