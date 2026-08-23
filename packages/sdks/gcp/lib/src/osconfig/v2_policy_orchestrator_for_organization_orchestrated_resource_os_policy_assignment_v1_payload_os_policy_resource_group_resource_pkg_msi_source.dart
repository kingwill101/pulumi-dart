// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi_source_gcs.dart';
import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi_source_remote.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource {
  /// Defaults to false. When false, files are subject to validations
  /// based on the file type:
  /// Remote: A checksum must be specified.
  /// Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// Specifies a file available as a Cloud Storage Object.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceGcs>? gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String>? localPath;
  /// Specifies a file available via some URI.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote>? remote;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations
  /// [gcs] Specifies a file available as a Cloud Storage Object.
  /// [localPath] A local path within the VM to use.
  /// [remote] Specifies a file available via some URI.
  const V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': ?localPath,
      'remote': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource(
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcs: (() { final guardedValue = map['gcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceGcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
