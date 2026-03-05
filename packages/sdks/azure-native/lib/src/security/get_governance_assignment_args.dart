// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_governance_assignment_args_doc}
/// Arguments for getGovernanceAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_get_governance_assignment_args_doc}
class GetGovernanceAssignmentArgs {
  /// The Assessment Key - A unique key for the assessment type
  final pulumi.Input<String> assessmentName;
  /// The governance assignment key - the assessment key of the required governance assignment
  final pulumi.Input<String> assignmentKey;
  /// The scope of the Governance assignments. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;

  /// Creates a new [GetGovernanceAssignmentArgs].
  /// [assessmentName] The Assessment Key - A unique key for the assessment type
  /// [assignmentKey] The governance assignment key - the assessment key of the required governance assignment
  /// [scope] The scope of the Governance assignments. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  GetGovernanceAssignmentArgs({
    required this.assessmentName,
    required this.assignmentKey,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'assignmentKey': assignmentKey,
      'scope': scope,
    };
  }

  factory GetGovernanceAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGovernanceAssignmentArgs(
      assessmentName: pulumi.Input.fromValue(map['assessmentName'] as String),
      assignmentKey: pulumi.Input.fromValue(map['assignmentKey'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

