// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_governance_assignment_args_doc}
/// Arguments for getGovernanceAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_get_governance_assignment_args_doc}
class GetGovernanceAssignmentArgs {
  /// The assessment key of the governance assignment.
  final pulumi.Input<String> assessmentName;
  /// The governance assignment key.
  final pulumi.Input<String> assignmentKey;
  /// The scope of the governance assignment.
  final pulumi.Input<String> scope;

  /// Creates a new [GetGovernanceAssignmentArgs].
  /// [assessmentName] The assessment key of the governance assignment.
  /// [assignmentKey] The governance assignment key.
  /// [scope] The scope of the governance assignment.
  const GetGovernanceAssignmentArgs({
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
