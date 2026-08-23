// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyAssignmentNonComplianceMessage {
  /// The non-compliance message text.
  final pulumi.Input<String> content;
  /// The ID of the Policy Definition that the non-compliance message applies to.
  final pulumi.Input<String> policyDefinitionReferenceId;

  /// Creates a new [GetPolicyAssignmentNonComplianceMessage].
  /// [content] The non-compliance message text.
  /// [policyDefinitionReferenceId] The ID of the Policy Definition that the non-compliance message applies to.
  const GetPolicyAssignmentNonComplianceMessage({
    required this.content,
    required this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'policyDefinitionReferenceId': policyDefinitionReferenceId,
    };
  }

  factory GetPolicyAssignmentNonComplianceMessage.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentNonComplianceMessage(
      content: pulumi.Input.fromValue(map['content'] as String),
      policyDefinitionReferenceId: pulumi.Input.fromValue(map['policyDefinitionReferenceId'] as String),
    );
  }
}
