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
  const ConfigManagementMembershipSpec({
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
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configSync: (() { final guardedValue = map['configSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigManagementConfigSync.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hierarchyController: (() { final guardedValue = map['hierarchyController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigManagementHierarchyControllerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyController: (() { final guardedValue = map['policyController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigManagementPolicyController.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

