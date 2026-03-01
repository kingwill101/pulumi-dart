// ignore_for_file: unused_element, unnecessary_cast


/// The properties of assigned policy initiatives.
class PolicyInitiativeAssignmentPropertiesResponse {
  /// The parameters of the assigned policy initiative.
  final dynamic assignmentParameters;
  /// The fully qualified id of the policy initiative.
  final String policyInitiativeId;

  /// Creates a new [PolicyInitiativeAssignmentPropertiesResponse].
  /// [assignmentParameters] The parameters of the assigned policy initiative.
  /// [policyInitiativeId] The fully qualified id of the policy initiative.
  PolicyInitiativeAssignmentPropertiesResponse({
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
      assignmentParameters: map['assignmentParameters'],
      policyInitiativeId: map['policyInitiativeId'] as String,
    );
  }
}

