// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_firewall_policy_association_firewall_policy_association_args_doc}
/// The set of arguments for FirewallPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_firewall_policy_association_firewall_policy_association_args_doc}
class FirewallPolicyAssociationArgs {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;
  /// The firewall policy of the resource.
  /// This field can be updated to refer to a different Firewall Policy, which will create a new association from that new
  /// firewall policy with the flag to override the existing attachmentTarget's policy association.
  /// **Note** Due to potential risks with this operation it is *highly* recommended to use the `create_before_destroy` life cycle option
  /// on your exisiting firewall policy so as to prevent a situation where your attachment target has no associated policy.
  final pulumi.Input<String> firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String>? name;

  /// Creates a new [FirewallPolicyAssociationArgs].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  FirewallPolicyAssociationArgs({
    required pulumi.Output<String> attachmentTarget,
    required pulumi.Output<String> firewallPolicy,
    pulumi.Output<String>? name,
  }) :
      attachmentTarget = pulumi.Input.asInput<String>(attachmentTarget),
      firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': attachmentTarget,
      'firewallPolicy': firewallPolicy,
      'name': ?name,
    };
  }

  factory FirewallPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationArgs(
      attachmentTarget: pulumi.Output.create<String>(map['attachmentTarget'] as String),
      firewallPolicy: pulumi.Output.create<String>(map['firewallPolicy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

