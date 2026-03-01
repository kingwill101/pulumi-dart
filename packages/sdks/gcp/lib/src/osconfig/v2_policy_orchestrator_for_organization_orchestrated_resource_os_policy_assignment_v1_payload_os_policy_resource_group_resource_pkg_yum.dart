// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum {
  /// Required. Package name.
  final String name;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum].
  /// [name] Required. Package name.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum(
      name: map['name'] as String,
    );
  }
}

