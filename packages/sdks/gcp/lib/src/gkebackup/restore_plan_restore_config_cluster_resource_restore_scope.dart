// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_cluster_resource_restore_scope_excluded_group_kind.dart';
import 'restore_plan_restore_config_cluster_resource_restore_scope_selected_group_kind.dart';

class RestorePlanRestoreConfigClusterResourceRestoreScope {
  /// If True, all valid cluster-scoped resources will be restored.
  /// Mutually exclusive to any other field in `clusterResourceRestoreScope`.
  final pulumi.Input<bool>? allGroupKinds;
  /// A list of cluster-scoped resource group kinds to NOT restore from the backup.
  /// If specified, all valid cluster-scoped resources will be restored except
  /// for those specified in the list.
  /// Mutually exclusive to any other field in `clusterResourceRestoreScope`.
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind>>? excludedGroupKinds;
  /// If True, no cluster-scoped resources will be restored.
  /// Mutually exclusive to any other field in `clusterResourceRestoreScope`.
  final pulumi.Input<bool>? noGroupKinds;
  /// A list of cluster-scoped resource group kinds to restore from the backup.
  /// If specified, only the selected resources will be restored.
  /// Mutually exclusive to any other field in the `clusterResourceRestoreScope`.
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind>>? selectedGroupKinds;

  /// Creates a new [RestorePlanRestoreConfigClusterResourceRestoreScope].
  /// [allGroupKinds] If True, all valid cluster-scoped resources will be restored.
  /// [excludedGroupKinds] A list of cluster-scoped resource group kinds to NOT restore from the backup.
  /// [noGroupKinds] If True, no cluster-scoped resources will be restored.
  /// [selectedGroupKinds] A list of cluster-scoped resource group kinds to restore from the backup.
  RestorePlanRestoreConfigClusterResourceRestoreScope({
    this.allGroupKinds,
    this.excludedGroupKinds,
    this.noGroupKinds,
    this.selectedGroupKinds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allGroupKinds': ?allGroupKinds,
      'excludedGroupKinds': ?pulumi.Input.mapOptionalInputValue<List<RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind>, List<Map<String, dynamic>>>(excludedGroupKinds, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noGroupKinds': ?noGroupKinds,
      'selectedGroupKinds': ?pulumi.Input.mapOptionalInputValue<List<RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind>, List<Map<String, dynamic>>>(selectedGroupKinds, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestorePlanRestoreConfigClusterResourceRestoreScope.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigClusterResourceRestoreScope(
      allGroupKinds: map['allGroupKinds'] == null ? null : (map['allGroupKinds']! as bool).input(),
      excludedGroupKinds: map['excludedGroupKinds'] == null ? null : (pulumi.Input.decodeList<RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind>(map['excludedGroupKinds']!, (value) => RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKind.fromMap((value as Map).cast<String, dynamic>()))).input(),
      noGroupKinds: map['noGroupKinds'] == null ? null : (map['noGroupKinds']! as bool).input(),
      selectedGroupKinds: map['selectedGroupKinds'] == null ? null : (pulumi.Input.decodeList<RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind>(map['selectedGroupKinds']!, (value) => RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

