// ignore_for_file: unused_element, unnecessary_cast


class GroupPolicyAssignmentNonComplianceMessage {
  /// The non-compliance message text. When assigning policy sets (initiatives), unless `policy_definition_reference_id` is specified then this message will be the default for all policies.
  final String content;
  /// When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.
  final String? policyDefinitionReferenceId;

  /// Creates a new [GroupPolicyAssignmentNonComplianceMessage].
  /// [content] The non-compliance message text. When assigning policy sets (initiatives), unless `policy_definition_reference_id` is specified then this message will be the default for all policies.
  /// [policyDefinitionReferenceId] When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.
  GroupPolicyAssignmentNonComplianceMessage({
    required this.content,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory GroupPolicyAssignmentNonComplianceMessage.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentNonComplianceMessage(
      content: map['content'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId'] as String,
    );
  }
}

