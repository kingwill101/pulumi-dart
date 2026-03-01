// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum {
  /// Package name.
  final String name;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum].
  /// [name] Package name.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum(
      name: map['name'] as String,
    );
  }
}

