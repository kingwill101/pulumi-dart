// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAssociationResponseComputeBeta {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String> attachmentId;
  /// The display name of the security policy of the association.
  final pulumi.Input<String> displayName;
  /// The name for an association.
  final pulumi.Input<String> name;
  /// The security policy ID of the association.
  final pulumi.Input<String> securityPolicyId;

  /// Creates a new [SecurityPolicyAssociationResponseComputeBeta].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [displayName] The display name of the security policy of the association.
  /// [name] The name for an association.
  /// [securityPolicyId] The security policy ID of the association.
  SecurityPolicyAssociationResponseComputeBeta({
    required this.attachmentId,
    required this.displayName,
    required this.name,
    required this.securityPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'displayName': displayName,
      'name': name,
      'securityPolicyId': securityPolicyId,
    };
  }

  factory SecurityPolicyAssociationResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociationResponseComputeBeta(
      attachmentId: (map['attachmentId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      name: (map['name'] as String).input(),
      securityPolicyId: (map['securityPolicyId'] as String).input(),
    );
  }
}

