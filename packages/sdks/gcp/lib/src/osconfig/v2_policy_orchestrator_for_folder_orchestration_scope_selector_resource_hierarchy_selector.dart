// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector {
  /// Names of the folders in scope.
  /// Format: `folders/{folder_id}`
  final pulumi.Input<List<String>>? includedFolders;
  /// Names of the projects in scope.
  /// Format: `projects/{project_number}`
  final pulumi.Input<List<String>>? includedProjects;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector].
  /// [includedFolders] Names of the folders in scope.
  /// [includedProjects] Names of the projects in scope.
  V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedFolders': ?includedFolders,
      'includedProjects': ?includedProjects,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector(
      includedFolders: (() { final guardedValue = map['includedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedProjects: (() { final guardedValue = map['includedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

