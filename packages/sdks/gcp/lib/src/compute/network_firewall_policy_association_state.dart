// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkFirewallPolicyAssociation resources.
class NetworkFirewallPolicyAssociationState {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String>? attachmentTarget;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [name] The name for an association.
  /// [project] The ID of the project in which the resource belongs.
  /// [shortName] The short name of the firewall policy of the association.
  const NetworkFirewallPolicyAssociationState({
    this.attachmentTarget,
    this.deletionPolicy,
    this.firewallPolicy,
    this.name,
    this.project,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': ?attachmentTarget,
      'deletionPolicy': ?deletionPolicy,
      'firewallPolicy': ?firewallPolicy,
      'name': ?name,
      'project': ?project,
      'shortName': ?shortName,
    };
  }

  factory NetworkFirewallPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyAssociationState(
      attachmentTarget: (() { final guardedValue = map['attachmentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
