// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of assigned policy initiatives.
class PolicyInitiativeAssignmentPropertiesResponse {
  /// The parameters of the assigned policy initiative.
  final pulumi.Input<dynamic> assignmentParameters;
  /// The fully qualified id of the policy initiative.
  final pulumi.Input<String> policyInitiativeId;

  /// Creates a new [PolicyInitiativeAssignmentPropertiesResponse].
  /// [assignmentParameters] The parameters of the assigned policy initiative.
  /// [policyInitiativeId] The fully qualified id of the policy initiative.
  const PolicyInitiativeAssignmentPropertiesResponse({
    required this.assignmentParameters,
    required this.policyInitiativeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentParameters': assignmentParameters,
      'policyInitiativeId': policyInitiativeId,
    };
  }

  factory PolicyInitiativeAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyInitiativeAssignmentPropertiesResponse(
      assignmentParameters: pulumi.Input.fromValue(map['assignmentParameters']),
      policyInitiativeId: pulumi.Input.fromValue(map['policyInitiativeId'] as String),
    );
  }
}

