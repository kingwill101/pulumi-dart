// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi_source.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi {
  /// Additional properties to use during installation.
  /// This should be in the format of Property=Setting.
  /// Appended to the defaults of `ACTION=INSTALL
  /// REBOOT=ReallySuppress`.
  final List<String>? properties;
  /// A remote or local file.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource source;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi].
  /// [properties] Additional properties to use during installation.
  /// [source] A remote or local file.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi({
    this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'source': source.toMap(),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi(
      properties: map['properties'] == null ? null : (map['properties'] as List).cast<String>(),
      source: V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

