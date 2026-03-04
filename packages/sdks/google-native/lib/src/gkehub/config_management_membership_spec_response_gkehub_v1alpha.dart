// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_binauthz_config_response.dart';
import 'config_management_config_sync_response_gkehub_v1alpha.dart';
import 'config_management_hierarchy_controller_config_response_gkehub_v1alpha.dart';
import 'config_management_policy_controller_response_gkehub_v1alpha.dart';

/// **Anthos Config Management**: Configuration for a single cluster. Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpecResponseGkehubV1alpha {
  /// Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  final pulumi.Input<ConfigManagementBinauthzConfigResponse> binauthz;

  /// The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  final pulumi.Input<String> cluster;

  /// Config Sync configuration for the cluster.
  final pulumi.Input<ConfigManagementConfigSyncResponseGkehubV1alpha>
  configSync;

  /// Hierarchy Controller configuration for the cluster.
  final pulumi.Input<
    ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha
  >
  hierarchyController;

  /// Policy Controller configuration for the cluster.
  final pulumi.Input<ConfigManagementPolicyControllerResponseGkehubV1alpha>
  policyController;

  /// Version of ACM installed.
  final pulumi.Input<String> version;

  /// Creates a new [ConfigManagementMembershipSpecResponseGkehubV1alpha].
  /// [binauthz] Binauthz conifguration for the cluster. Deprecated: This field will be ignored and should not be set.
  /// [cluster] The user-specified cluster name used by Config Sync cluster-name-selector annotation or ClusterSelector, for applying configs to only a subset of clusters. Omit this field if the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector. Set this field if a name different from the cluster's fleet membership name is used by Config Sync cluster-name-selector annotation or ClusterSelector.
  /// [configSync] Config Sync configuration for the cluster.
  /// [hierarchyController] Hierarchy Controller configuration for the cluster.
  /// [policyController] Policy Controller configuration for the cluster.
  /// [version] Version of ACM installed.
  ConfigManagementMembershipSpecResponseGkehubV1alpha({
    required this.binauthz,
    required this.cluster,
    required this.configSync,
    required this.hierarchyController,
    required this.policyController,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binauthz':
          pulumi.Input.mapInputValue<
            ConfigManagementBinauthzConfigResponse,
            Map<String, dynamic>
          >(binauthz, (value) => value.toMap()),
      'cluster': cluster,
      'configSync':
          pulumi.Input.mapInputValue<
            ConfigManagementConfigSyncResponseGkehubV1alpha,
            Map<String, dynamic>
          >(configSync, (value) => value.toMap()),
      'hierarchyController':
          pulumi.Input.mapInputValue<
            ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha,
            Map<String, dynamic>
          >(hierarchyController, (value) => value.toMap()),
      'policyController':
          pulumi.Input.mapInputValue<
            ConfigManagementPolicyControllerResponseGkehubV1alpha,
            Map<String, dynamic>
          >(policyController, (value) => value.toMap()),
      'version': version,
    };
  }

  factory ConfigManagementMembershipSpecResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigManagementMembershipSpecResponseGkehubV1alpha(
      binauthz: pulumi.Input.fromValue(
        ConfigManagementBinauthzConfigResponse.fromMap(
          (map['binauthz']! as Map).cast<String, dynamic>(),
        ),
      ),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      configSync: pulumi.Input.fromValue(
        ConfigManagementConfigSyncResponseGkehubV1alpha.fromMap(
          (map['configSync']! as Map).cast<String, dynamic>(),
        ),
      ),
      hierarchyController: pulumi.Input.fromValue(
        ConfigManagementHierarchyControllerConfigResponseGkehubV1alpha.fromMap(
          (map['hierarchyController']! as Map).cast<String, dynamic>(),
        ),
      ),
      policyController: pulumi.Input.fromValue(
        ConfigManagementPolicyControllerResponseGkehubV1alpha.fromMap(
          (map['policyController']! as Map).cast<String, dynamic>(),
        ),
      ),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
