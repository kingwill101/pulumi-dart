// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyAssignmentNonComplianceMessage {
  /// The non-compliance message text. When assigning policy sets (initiatives), unless `policy_definition_reference_id` is specified then this message will be the default for all policies.
  final pulumi.Input<String> content;
  /// When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.
  final pulumi.Input<String>? policyDefinitionReferenceId;

  /// Creates a new [ResourcePolicyAssignmentNonComplianceMessage].
  /// [content] The non-compliance message text. When assigning policy sets (initiatives), unless `policy_definition_reference_id` is specified then this message will be the default for all policies.
  /// [policyDefinitionReferenceId] When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.
  ResourcePolicyAssignmentNonComplianceMessage({
    required this.content,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory ResourcePolicyAssignmentNonComplianceMessage.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentNonComplianceMessage(
      content: (map['content'] as String).input(),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : (map['policyDefinitionReferenceId'] as String).input(),
    );
  }
}

