// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallPolicyAssociation resources.
class FirewallPolicyAssociationState {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String>? attachmentTarget;
  /// The firewall policy of the resource.
  /// This field can be updated to refer to a different Firewall Policy, which will create a new association from that new
  /// firewall policy with the flag to override the existing attachmentTarget's policy association.
  /// **Note** Due to potential risks with this operation it is *highly* recommended to use the `create_before_destroy` life cycle option
  /// on your exisiting firewall policy so as to prevent a situation where your attachment target has no associated policy.
  final pulumi.Input<String>? firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The short name of the firewall policy of the association.
  final pulumi.Input<String>? shortName;

  /// Creates a new [FirewallPolicyAssociationState].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [shortName] The short name of the firewall policy of the association.
  FirewallPolicyAssociationState({
    this.attachmentTarget,
    this.firewallPolicy,
    this.name,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': ?attachmentTarget,
      'firewallPolicy': ?firewallPolicy,
      'name': ?name,
      'shortName': ?shortName,
    };
  }

  factory FirewallPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationState(
      attachmentTarget: map['attachmentTarget'] == null ? null : (map['attachmentTarget'] as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (map['firewallPolicy'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      shortName: map['shortName'] == null ? null : (map['shortName'] as String).input(),
    );
  }
}

