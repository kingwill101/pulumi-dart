// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyAssociationComputeBeta {
  /// The target that the firewall policy is attached to.
  final String? attachmentTarget;
  /// The name for an association.
  final String? name;

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
      attachmentTarget: map['attachmentTarget'] == null ? null : map['attachmentTarget'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

