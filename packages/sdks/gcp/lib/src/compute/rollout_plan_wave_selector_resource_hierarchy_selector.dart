// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutPlanWaveSelectorResourceHierarchySelector {
  /// Format: "folders/{folder_id}"
  final pulumi.Input<List<String>>? includedFolders;
  /// Format: "organizations/{organization_id}"
  final pulumi.Input<List<String>>? includedOrganizations;
  /// Format: "projects/{project_id}"
  final pulumi.Input<List<String>>? includedProjects;

  /// Creates a new [RolloutPlanWaveSelectorResourceHierarchySelector].
  /// [includedFolders] Format: "folders/{folder_id}"
  /// [includedOrganizations] Format: "organizations/{organization_id}"
  /// [includedProjects] Format: "projects/{project_id}"
  const RolloutPlanWaveSelectorResourceHierarchySelector({
    this.includedFolders,
    this.includedOrganizations,
    this.includedProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedFolders': ?includedFolders,
      'includedOrganizations': ?includedOrganizations,
      'includedProjects': ?includedProjects,
    };
  }

  factory RolloutPlanWaveSelectorResourceHierarchySelector.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveSelectorResourceHierarchySelector(
      includedFolders: (() { final guardedValue = map['includedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedOrganizations: (() { final guardedValue = map['includedOrganizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedProjects: (() { final guardedValue = map['includedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
