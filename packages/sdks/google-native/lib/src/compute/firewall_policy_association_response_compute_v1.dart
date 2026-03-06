// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyAssociationResponseComputeV1 {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String> attachmentTarget;
  /// Deprecated, please use short name instead. The display name of the firewall policy of the association.
  final pulumi.Input<String> displayName;
  /// The firewall policy ID of the association.
  final pulumi.Input<String> firewallPolicyId;
  /// The name for an association.
  final pulumi.Input<String> name;
  /// The short name of the firewall policy of the association.
  final pulumi.Input<String> shortName;

  /// Creates a new [FirewallPolicyAssociationResponseComputeV1].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [displayName] Deprecated, please use short name instead. The display name of the firewall policy of the association.
  /// [firewallPolicyId] The firewall policy ID of the association.
  /// [name] The name for an association.
  /// [shortName] The short name of the firewall policy of the association.
  const FirewallPolicyAssociationResponseComputeV1({
    required this.attachmentTarget,
    required this.displayName,
    required this.firewallPolicyId,
    required this.name,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': attachmentTarget,
      'displayName': displayName,
      'firewallPolicyId': firewallPolicyId,
      'name': name,
      'shortName': shortName,
    };
  }

  factory FirewallPolicyAssociationResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationResponseComputeV1(
      attachmentTarget: pulumi.Input.fromValue(map['attachmentTarget'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      firewallPolicyId: pulumi.Input.fromValue(map['firewallPolicyId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
    );
  }
}

