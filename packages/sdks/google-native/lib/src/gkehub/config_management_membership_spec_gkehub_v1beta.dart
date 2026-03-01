// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_binauthz_config_gkehub_v1beta.dart';
import 'config_management_config_sync_gkehub_v1beta.dart';
import 'config_management_hierarchy_controller_config_gkehub_v1beta.dart';
import 'config_management_policy_controller_gkehub_v1beta.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecGkehubV1beta {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final ConfigManagementBinauthzConfigGkehubV1beta? binauthz;
  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final String? cluster;
  /// Config Sync configuration for the cluster.
  final ConfigManagementConfigSyncGkehubV1beta? configSync;
  /// Hierarchy Controller configuration for the cluster.
  final ConfigManagementHierarchyControllerConfigGkehubV1beta? hierarchyController;
  /// Policy Controller configuration for the cluster.
  final ConfigManagementPolicyControllerGkehubV1beta? policyController;
  /// Version of ACM installed.
  final String? version;

  /// Creates a new [ConfigManagementMembershipSpecGkehubV1beta].
  /// [binauthz] Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  /// [cluster] The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  /// [configSync] Config Sync configuration for the cluster.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster.
  /// [policyController] Policy Controller configuration for the cluster.
  /// [version] Version of ACM installed.
  ConfigManagementMembershipSpecGkehubV1beta({
    this.binauthz,
    this.cluster,
    this.configSync,
    this.hierarchyController,
    this.policyController,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binauthz': ?binauthz == null ? null : binauthz!.toMap(),
      'cluster': ?cluster,
      'configSync': ?configSync == null ? null : configSync!.toMap(),
      'hierarchyController': ?hierarchyController == null ? null : hierarchyController!.toMap(),
      'policyController': ?policyController == null ? null : policyController!.toMap(),
      'version': ?version,
    };
  }

  factory ConfigManagementMembershipSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementMembershipSpecGkehubV1beta(
      binauthz: map['binauthz'] == null ? null : ConfigManagementBinauthzConfigGkehubV1beta.fromMap((map['binauthz'] as Map).cast<String, dynamic>()),
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      configSync: map['configSync'] == null ? null : ConfigManagementConfigSyncGkehubV1beta.fromMap((map['configSync'] as Map).cast<String, dynamic>()),
      hierarchyController: map['hierarchyController'] == null ? null : ConfigManagementHierarchyControllerConfigGkehubV1beta.fromMap((map['hierarchyController'] as Map).cast<String, dynamic>()),
      policyController: map['policyController'] == null ? null : ConfigManagementPolicyControllerGkehubV1beta.fromMap((map['policyController'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

