// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi_source_gcs.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi_source_remote.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource {
  /// Defaults to false. When false, files are subject to validations
  /// based on the file type:
  /// Remote: A checksum must be specified.
  /// Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// Specifies a file available as a Cloud Storage Object.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceGcs>? gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String>? localPath;
  /// Specifies a file available via some URI.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote>? remote;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations
  /// [gcs] Specifies a file available as a Cloud Storage Object.
  /// [localPath] A local path within the VM to use.
  /// [remote] Specifies a file available via some URI.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': ?localPath,
      'remote': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSource(
      allowInsecure: map['allowInsecure'] == null ? null : (map['allowInsecure']! as bool).input(),
      gcs: map['gcs'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceGcs.fromMap((map['gcs']! as Map).cast<String, dynamic>())).input(),
      localPath: map['localPath'] == null ? null : (map['localPath']! as String).input(),
      remote: map['remote'] == null ? null : (V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsiSourceRemote.fromMap((map['remote']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

