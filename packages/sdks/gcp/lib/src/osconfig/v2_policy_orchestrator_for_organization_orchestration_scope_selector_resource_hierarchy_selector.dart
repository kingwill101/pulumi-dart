// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector {
  /// Optional. Names of the folders in scope.
  /// Format: `folders/{folder_id}`
  final pulumi.Input<List<String>>? includedFolders;
  /// Optional. Names of the projects in scope.
  /// Format: `projects/{project_number}`
  final pulumi.Input<List<String>>? includedProjects;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector].
  /// [includedFolders] Optional. Names of the folders in scope.
  /// [includedProjects] Optional. Names of the projects in scope.
  V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedFolders': ?includedFolders,
      'includedProjects': ?includedProjects,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector(
      includedFolders: map['includedFolders'] == null ? null : ((map['includedFolders'] as List).cast<String>()).input(),
      includedProjects: map['includedProjects'] == null ? null : ((map['includedProjects'] as List).cast<String>()).input(),
    );
  }
}

