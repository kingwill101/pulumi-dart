// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAssociationResponse {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String> attachmentId;

  /// The display name of the security policy of the association.
  final pulumi.Input<String> displayName;

  /// The name for an association.
  final pulumi.Input<String> name;

  /// The security policy ID of the association.
  final pulumi.Input<String> securityPolicyId;

  /// Creates a new [SecurityPolicyAssociationResponse].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [displayName] The display name of the security policy of the association.
  /// [name] The name for an association.
  /// [securityPolicyId] The security policy ID of the association.
  SecurityPolicyAssociationResponse({
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

  factory SecurityPolicyAssociationResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociationResponse(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      securityPolicyId: pulumi.Input.fromValue(
        map['securityPolicyId'] as String,
      ),
    );
  }
}
