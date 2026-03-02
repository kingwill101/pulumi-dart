// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkFirewallPolicyAssociation resources.
class NetworkFirewallPolicyAssociationState {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String>? attachmentTarget;
  /// The firewall policy of the resource.
  final pulumi.Input<String>? firewallPolicy;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The short name of the firewall policy of the association.
  final pulumi.Input<String>? shortName;

  /// Creates a new [NetworkFirewallPolicyAssociationState].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [project] The ID of the project in which the resource belongs.
  /// [shortName] The short name of the firewall policy of the association.
  NetworkFirewallPolicyAssociationState({
    this.attachmentTarget,
    this.firewallPolicy,
    this.name,
    this.project,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': ?attachmentTarget,
      'firewallPolicy': ?firewallPolicy,
      'name': ?name,
      'project': ?project,
      'shortName': ?shortName,
    };
  }

  factory NetworkFirewallPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyAssociationState(
      attachmentTarget: map['attachmentTarget'] == null ? null : (map['attachmentTarget']! as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (map['firewallPolicy']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      shortName: map['shortName'] == null ? null : (map['shortName']! as String).input(),
    );
  }
}

