// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_config_sync.dart';
import 'config_management_hierarchy_controller_config.dart';
import 'config_management_policy_controller.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpec {
  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final pulumi.Input<String>? cluster;
  /// Config Sync configuration for the cluster.
  final pulumi.Input<ConfigManagementConfigSync>? configSync;
  /// Hierarchy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementHierarchyControllerConfig>? hierarchyController;
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementPolicyController>? policyController;
  /// Version of ACM installed.
  final pulumi.Input<String>? version;

  /// Creates a new [ConfigManagementMembershipSpec].
  /// [cluster] The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  /// [configSync] Config Sync configuration for the cluster.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster.
  /// [policyController] Policy Controller configuration for the cluster.
  /// [version] Version of ACM installed.
  ConfigManagementMembershipSpec({
    this.cluster,
    this.configSync,
    this.hierarchyController,
    this.policyController,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'configSync': ?pulumi.Input.mapOptionalInputValue<ConfigManagementConfigSync, Map<String, dynamic>>(configSync, (value) => value.toMap()),
      'hierarchyController': ?pulumi.Input.mapOptionalInputValue<ConfigManagementHierarchyControllerConfig, Map<String, dynamic>>(hierarchyController, (value) => value.toMap()),
      'policyController': ?pulumi.Input.mapOptionalInputValue<ConfigManagementPolicyController, Map<String, dynamic>>(policyController, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ConfigManagementMembershipSpec.fromMap(Map<String, dynamic> map) {
    return ConfigManagementMembershipSpec(
      cluster: map['cluster'] == null ? null : (map['cluster'] as String).input(),
      configSync: map['configSync'] == null ? null : (ConfigManagementConfigSync.fromMap((map['configSync'] as Map).cast<String, dynamic>())).input(),
      hierarchyController: map['hierarchyController'] == null ? null : (ConfigManagementHierarchyControllerConfig.fromMap((map['hierarchyController'] as Map).cast<String, dynamic>())).input(),
      policyController: map['policyController'] == null ? null : (ConfigManagementPolicyController.fromMap((map['policyController'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

