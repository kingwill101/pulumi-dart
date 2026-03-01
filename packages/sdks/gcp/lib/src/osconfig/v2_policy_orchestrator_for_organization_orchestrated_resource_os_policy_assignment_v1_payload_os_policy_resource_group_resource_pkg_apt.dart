// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt {
  /// Required. Package name.
  final String name;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt].
  /// [name] Required. Package name.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt(
      name: map['name'] as String,
    );
  }
}

