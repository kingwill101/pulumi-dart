// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAssociationComputeBeta {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String>? attachmentId;
  /// The name for an association.
  final pulumi.Input<String>? name;

  /// Creates a new [SecurityPolicyAssociationComputeBeta].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [name] The name for an association.
  SecurityPolicyAssociationComputeBeta({
    this.attachmentId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'name': ?name,
    };
  }

  factory SecurityPolicyAssociationComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociationComputeBeta(
      attachmentId: map['attachmentId'] == null ? null : (map['attachmentId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

