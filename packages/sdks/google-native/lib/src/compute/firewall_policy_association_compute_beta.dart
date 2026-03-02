// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyAssociationComputeBeta {
  /// The target that the firewall policy is attached to.
  final pulumi.Input<String>? attachmentTarget;
  /// The name for an association.
  final pulumi.Input<String>? name;

  /// Creates a new [FirewallPolicyAssociationComputeBeta].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [name] The name for an association.
  FirewallPolicyAssociationComputeBeta({
    this.attachmentTarget,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': ?attachmentTarget,
      'name': ?name,
    };
  }

  factory FirewallPolicyAssociationComputeBeta.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationComputeBeta(
      attachmentTarget: map['attachmentTarget'] == null ? null : (map['attachmentTarget']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

