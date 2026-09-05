// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGroupPolicyAssignmentNonComplianceMessage {
  /// The non-compliance message text. When assigning policy sets (initiatives), unless `policyDefinitionReferenceId` is specified then this message will be the default for all policies.
  final pulumi.Input<String> content;
  /// When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.
  final pulumi.Input<String?>? policyDefinitionReferenceId;

  /// Creates a new [ResourceGroupPolicyAssignmentNonComplianceMessage].
  /// [content] The non-compliance message text. When assigning policy sets (initiatives), unless `policyDefinitionReferenceId` is specified then this message will be the default for all policies.
  /// [policyDefinitionReferenceId] When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.
  const ResourceGroupPolicyAssignmentNonComplianceMessage({
    required this.content,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory ResourceGroupPolicyAssignmentNonComplianceMessage.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyAssignmentNonComplianceMessage(
      content: pulumi.Input.fromValue(map['content'] as String),
      policyDefinitionReferenceId: (() { final guardedValue = map['policyDefinitionReferenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
