// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyAssociationResponseComputeBeta {
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

  /// Creates a new [FirewallPolicyAssociationResponseComputeBeta].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [displayName] Deprecated, please use short name instead. The display name of the firewall policy of the association.
  /// [firewallPolicyId] The firewall policy ID of the association.
  /// [name] The name for an association.
  /// [shortName] The short name of the firewall policy of the association.
  FirewallPolicyAssociationResponseComputeBeta({
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

  factory FirewallPolicyAssociationResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationResponseComputeBeta(
      attachmentTarget: (map['attachmentTarget'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      firewallPolicyId: (map['firewallPolicyId'] as String).input(),
      name: (map['name'] as String).input(),
      shortName: (map['shortName'] as String).input(),
    );
  }
}

