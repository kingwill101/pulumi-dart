// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel {
  /// Labels are identified by key/value pairs in this map.
  /// A VM should contain all the key/value pairs specified in this
  /// map to be selected.
  final Map<String, String>? labels;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel].
  /// [labels] Labels are identified by key/value pairs in this map.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabel(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

