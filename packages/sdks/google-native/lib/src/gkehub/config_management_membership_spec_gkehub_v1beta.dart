// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_binauthz_config_gkehub_v1beta.dart';
import 'config_management_config_sync_gkehub_v1beta.dart';
import 'config_management_hierarchy_controller_config_gkehub_v1beta.dart';
import 'config_management_policy_controller_gkehub_v1beta.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecGkehubV1beta {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final pulumi.Input<ConfigManagementBinauthzConfigGkehubV1beta>? binauthz;
  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final pulumi.Input<String>? cluster;
  /// Config Sync configuration for the cluster.
  final pulumi.Input<ConfigManagementConfigSyncGkehubV1beta>? configSync;
  /// Hierarchy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementHierarchyControllerConfigGkehubV1beta>? hierarchyController;
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementPolicyControllerGkehubV1beta>? policyController;
  /// Version of ACM installed.
  final pulumi.Input<String>? version;

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
      'binauthz': ?pulumi.Input.mapOptionalInputValue<ConfigManagementBinauthzConfigGkehubV1beta, Map<String, dynamic>>(binauthz, (value) => value.toMap()),
      'cluster': ?cluster,
      'configSync': ?pulumi.Input.mapOptionalInputValue<ConfigManagementConfigSyncGkehubV1beta, Map<String, dynamic>>(configSync, (value) => value.toMap()),
      'hierarchyController': ?pulumi.Input.mapOptionalInputValue<ConfigManagementHierarchyControllerConfigGkehubV1beta, Map<String, dynamic>>(hierarchyController, (value) => value.toMap()),
      'policyController': ?pulumi.Input.mapOptionalInputValue<ConfigManagementPolicyControllerGkehubV1beta, Map<String, dynamic>>(policyController, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ConfigManagementMembershipSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementMembershipSpecGkehubV1beta(
      binauthz: map['binauthz'] == null ? null : (ConfigManagementBinauthzConfigGkehubV1beta.fromMap((map['binauthz'] as Map).cast<String, dynamic>())).input(),
      cluster: map['cluster'] == null ? null : (map['cluster'] as String).input(),
      configSync: map['configSync'] == null ? null : (ConfigManagementConfigSyncGkehubV1beta.fromMap((map['configSync'] as Map).cast<String, dynamic>())).input(),
      hierarchyController: map['hierarchyController'] == null ? null : (ConfigManagementHierarchyControllerConfigGkehubV1beta.fromMap((map['hierarchyController'] as Map).cast<String, dynamic>())).input(),
      policyController: map['policyController'] == null ? null : (ConfigManagementPolicyControllerGkehubV1beta.fromMap((map['policyController'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

