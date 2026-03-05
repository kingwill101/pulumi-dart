// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_config_sync_response.dart';
import 'config_management_hierarchy_controller_config_response.dart';
import 'config_management_policy_controller_response.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecResponse {
  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final pulumi.Input<String> cluster;
  /// Config Sync configuration for the cluster.
  final pulumi.Input<ConfigManagementConfigSyncResponse> configSync;
  /// Hierarchy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementHierarchyControllerConfigResponse> hierarchyController;
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementPolicyControllerResponse> policyController;
  /// Version of ACM installed.
  final pulumi.Input<String> version;

  /// Creates a new [ConfigManagementMembershipSpecResponse].
  /// [cluster] The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  /// [configSync] Config Sync configuration for the cluster.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster.
  /// [policyController] Policy Controller configuration for the cluster.
  /// [version] Version of ACM installed.
  ConfigManagementMembershipSpecResponse({
    required this.cluster,
    required this.configSync,
    required this.hierarchyController,
    required this.policyController,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'configSync': pulumi.Input.mapInputValue<ConfigManagementConfigSyncResponse, Map<String, dynamic>>(configSync, (value) => value.toMap()),
      'hierarchyController': pulumi.Input.mapInputValue<ConfigManagementHierarchyControllerConfigResponse, Map<String, dynamic>>(hierarchyController, (value) => value.toMap()),
      'policyController': pulumi.Input.mapInputValue<ConfigManagementPolicyControllerResponse, Map<String, dynamic>>(policyController, (value) => value.toMap()),
      'version': version,
    };
  }

  factory ConfigManagementMembershipSpecResponse.fromMap(Map<String, dynamic> map) {
    return ConfigManagementMembershipSpecResponse(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      configSync: pulumi.Input.fromValue(ConfigManagementConfigSyncResponse.fromMap((map['configSync']! as Map).cast<String, dynamic>())),
      hierarchyController: pulumi.Input.fromValue(ConfigManagementHierarchyControllerConfigResponse.fromMap((map['hierarchyController']! as Map).cast<String, dynamic>())),
      policyController: pulumi.Input.fromValue(ConfigManagementPolicyControllerResponse.fromMap((map['policyController']! as Map).cast<String, dynamic>())),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

