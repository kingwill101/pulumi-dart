// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector {
  /// Optional. Names of the folders in scope.
  /// Format: `folders/{folder_id}`
  final pulumi.Input<List<String>>? includedFolders;
  /// Optional. Names of the projects in scope.
  /// Format: `projects/{project_number}`
  final pulumi.Input<List<String>>? includedProjects;

  /// Creates a new [V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector].
  /// [includedFolders] Optional. Names of the folders in scope.
  /// [includedProjects] Optional. Names of the projects in scope.
  V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedFolders': ?includedFolders,
      'includedProjects': ?includedProjects,
    };
  }

  factory V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector(
      includedFolders: (() { final guardedValue = map['includedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedProjects: (() { final guardedValue = map['includedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

