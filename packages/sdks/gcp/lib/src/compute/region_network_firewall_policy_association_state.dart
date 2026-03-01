// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionNetworkFirewallPolicyAssociation resources.
class RegionNetworkFirewallPolicyAssociationState {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String>? attachmentTarget;
  /// The firewall policy of the resource.
  final pulumi.Input<String>? firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The location of this resource.
  final pulumi.Input<String>? region;
  /// The short name of the firewall policy of the association.
  final pulumi.Input<String>? shortName;

  /// Creates a new [RegionNetworkFirewallPolicyAssociationState].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location of this resource.
  /// [shortName] The short name of the firewall policy of the association.
  RegionNetworkFirewallPolicyAssociationState({
    pulumi.Output<String>? attachmentTarget,
    pulumi.Output<String>? firewallPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shortName,
  }) :
      attachmentTarget = pulumi.Input.asOptionalInput<String>(attachmentTarget),
      firewallPolicy = pulumi.Input.asOptionalInput<String>(firewallPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      shortName = pulumi.Input.asOptionalInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': ?attachmentTarget,
      'firewallPolicy': ?firewallPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'shortName': ?shortName,
    };
  }

  factory RegionNetworkFirewallPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyAssociationState(
      attachmentTarget: map['attachmentTarget'] == null ? null : pulumi.Output.create<String>(map['attachmentTarget'] as String),
      firewallPolicy: map['firewallPolicy'] == null ? null : pulumi.Output.create<String>(map['firewallPolicy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
    );
  }
}

