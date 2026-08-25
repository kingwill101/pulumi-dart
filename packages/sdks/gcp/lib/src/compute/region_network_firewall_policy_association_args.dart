// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_network_firewall_policy_association_region_network_firewall_policy_association_args_doc}
/// The set of arguments for RegionNetworkFirewallPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_firewall_policy_association_region_network_firewall_policy_association_args_doc}
class RegionNetworkFirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String?>? name;
  /// (Optional, Beta)
  /// An integer indicating the priority of an association.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The location of this resource.
  final pulumi.Input<String?>? region;

  /// Creates a new [RegionNetworkFirewallPolicyAssociationArgs].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [priority] (Optional, Beta)
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  const RegionNetworkFirewallPolicyAssociationArgs({
    required this.attachmentTarget,
    this.deletionPolicy,
    required this.firewallPolicy,
    this.name,
    this.priority,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': attachmentTarget,
      'deletionPolicy': ?deletionPolicy,
      'firewallPolicy': firewallPolicy,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RegionNetworkFirewallPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyAssociationArgs(
      attachmentTarget: pulumi.Input.fromValue(map['attachmentTarget'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicy: pulumi.Input.fromValue(map['firewallPolicy'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
