// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_kind_response.dart';

/// Defines the scope of cluster-scoped resources to restore. Some group kinds are not reasonable choices for a restore, and will cause an error if selected here. Any scope selection that would restore "all valid" resources automatically excludes these group kinds. - gkebackup.gke.io/BackupJob - gkebackup.gke.io/RestoreJob - metrics.k8s.io/NodeMetrics - migration.k8s.io/StorageState - migration.k8s.io/StorageVersionMigration - Node - snapshot.storage.k8s.io/VolumeSnapshotContent - storage.k8s.io/CSINode Some group kinds are driven by restore configuration elsewhere, and will cause an error if selected here. - Namespace - PersistentVolume
class ClusterResourceRestoreScopeResponse {
  /// Optional. If True, all valid cluster-scoped resources will be restored. Mutually exclusive to any other field in the message.
  final bool allGroupKinds;
  /// Optional. A list of cluster-scoped resource group kinds to NOT restore from the backup. If specified, all valid cluster-scoped resources will be restored except for those specified in the list. Mutually exclusive to any other field in the message.
  final List<GroupKindResponse> excludedGroupKinds;
  /// Optional. If True, no cluster-scoped resources will be restored. This has the same restore scope as if the message is not defined. Mutually exclusive to any other field in the message.
  final bool noGroupKinds;
  /// Optional. A list of cluster-scoped resource group kinds to restore from the backup. If specified, only the selected resources will be restored. Mutually exclusive to any other field in the message.
  final List<GroupKindResponse> selectedGroupKinds;

  /// Creates a new [ClusterResourceRestoreScopeResponse].
  /// [allGroupKinds] Optional. If True, all valid cluster-scoped resources will be restored. Mutually exclusive to any other field in the message.
  /// [excludedGroupKinds] Optional. A list of cluster-scoped resource group kinds to NOT restore from the backup. If specified, all valid cluster-scoped resources will be restored except for those specified in the list. Mutually exclusive to any other field in the message.
  /// [noGroupKinds] Optional. If True, no cluster-scoped resources will be restored. This has the same restore scope as if the message is not defined. Mutually exclusive to any other field in the message.
  /// [selectedGroupKinds] Optional. A list of cluster-scoped resource group kinds to restore from the backup. If specified, only the selected resources will be restored. Mutually exclusive to any other field in the message.
  ClusterResourceRestoreScopeResponse({
    required this.allGroupKinds,
    required this.excludedGroupKinds,
    required this.noGroupKinds,
    required this.selectedGroupKinds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allGroupKinds': allGroupKinds,
      'excludedGroupKinds': pulumi.Input.encodeList<GroupKindResponse, Map<String, dynamic>>(excludedGroupKinds, (value) => value.toMap()),
      'noGroupKinds': noGroupKinds,
      'selectedGroupKinds': pulumi.Input.encodeList<GroupKindResponse, Map<String, dynamic>>(selectedGroupKinds, (value) => value.toMap()),
    };
  }

  factory ClusterResourceRestoreScopeResponse.fromMap(Map<String, dynamic> map) {
    return ClusterResourceRestoreScopeResponse(
      allGroupKinds: map['allGroupKinds'] as bool,
      excludedGroupKinds: pulumi.Input.decodeList<GroupKindResponse>(map['excludedGroupKinds'], (value) => GroupKindResponse.fromMap((value as Map).cast<String, dynamic>())),
      noGroupKinds: map['noGroupKinds'] as bool,
      selectedGroupKinds: pulumi.Input.decodeList<GroupKindResponse>(map['selectedGroupKinds'], (value) => GroupKindResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

