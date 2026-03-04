// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_restore_scope.dart';
import 'namespaced_names.dart';
import 'namespaces.dart';
import 'restore_config_cluster_resource_conflict_policy.dart';
import 'restore_config_namespaced_resource_restore_mode.dart';
import 'restore_config_volume_data_restore_policy.dart';
import 'substitution_rule.dart';
import 'transformation_rule.dart';

/// Configuration of a restore. Next id: 13
class RestoreConfig {
  /// Restore all namespaced resources in the Backup if set to "True". Specifying this field to "False" is an error.
  final pulumi.Input<bool>? allNamespaces;

  /// Optional. Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.
  final pulumi.Input<RestoreConfigClusterResourceConflictPolicy>?
  clusterResourceConflictPolicy;

  /// Optional. Identifies the cluster-scoped resources to restore from the Backup. Not specifying it means NO cluster resource will be restored.
  final pulumi.Input<ClusterResourceRestoreScope>? clusterResourceRestoreScope;

  /// A list of selected namespaces excluded from restoration. All namespaces except those in this list will be restored.
  final pulumi.Input<Namespaces>? excludedNamespaces;

  /// Optional. Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
  final pulumi.Input<RestoreConfigNamespacedResourceRestoreMode>?
  namespacedResourceRestoreMode;

  /// Do not restore any namespaced resources if set to "True". Specifying this field to "False" is not allowed.
  final pulumi.Input<bool>? noNamespaces;

  /// A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the resources to which they refer will be restored.
  final pulumi.Input<NamespacedNames>? selectedApplications;

  /// A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources contained in them will be restored.
  final pulumi.Input<Namespaces>? selectedNamespaces;

  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no substitution will occur.
  final pulumi.Input<List<SubstitutionRule>>? substitutionRules;

  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no transformation will occur.
  final pulumi.Input<List<TransformationRule>>? transformationRules;

  /// Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).
  final pulumi.Input<RestoreConfigVolumeDataRestorePolicy>?
  volumeDataRestorePolicy;

  /// Creates a new [RestoreConfig].
  /// [allNamespaces] Restore all namespaced resources in the Backup if set to "True". Specifying this field to "False" is an error.
  /// [clusterResourceConflictPolicy] Optional. Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.
  /// [clusterResourceRestoreScope] Optional. Identifies the cluster-scoped resources to restore from the Backup. Not specifying it means NO cluster resource will be restored.
  /// [excludedNamespaces] A list of selected namespaces excluded from restoration. All namespaces except those in this list will be restored.
  /// [namespacedResourceRestoreMode] Optional. Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
  /// [noNamespaces] Do not restore any namespaced resources if set to "True". Specifying this field to "False" is not allowed.
  /// [selectedApplications] A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the resources to which they refer will be restored.
  /// [selectedNamespaces] A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources contained in them will be restored.
  /// [substitutionRules] Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no substitution will occur.
  /// [transformationRules] Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no transformation will occur.
  /// [volumeDataRestorePolicy] Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).
  RestoreConfig({
    this.allNamespaces,
    this.clusterResourceConflictPolicy,
    this.clusterResourceRestoreScope,
    this.excludedNamespaces,
    this.namespacedResourceRestoreMode,
    this.noNamespaces,
    this.selectedApplications,
    this.selectedNamespaces,
    this.substitutionRules,
    this.transformationRules,
    this.volumeDataRestorePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': ?allNamespaces,
      'clusterResourceConflictPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreConfigClusterResourceConflictPolicy,
            String
          >(clusterResourceConflictPolicy, (value) => value.wireValue),
      'clusterResourceRestoreScope':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterResourceRestoreScope,
            Map<String, dynamic>
          >(clusterResourceRestoreScope, (value) => value.toMap()),
      'excludedNamespaces':
          ?pulumi.Input.mapOptionalInputValue<Namespaces, Map<String, dynamic>>(
            excludedNamespaces,
            (value) => value.toMap(),
          ),
      'namespacedResourceRestoreMode':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreConfigNamespacedResourceRestoreMode,
            String
          >(namespacedResourceRestoreMode, (value) => value.wireValue),
      'noNamespaces': ?noNamespaces,
      'selectedApplications':
          ?pulumi.Input.mapOptionalInputValue<
            NamespacedNames,
            Map<String, dynamic>
          >(selectedApplications, (value) => value.toMap()),
      'selectedNamespaces':
          ?pulumi.Input.mapOptionalInputValue<Namespaces, Map<String, dynamic>>(
            selectedNamespaces,
            (value) => value.toMap(),
          ),
      'substitutionRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubstitutionRule>,
            List<Map<String, dynamic>>
          >(
            substitutionRules,
            (value) =>
                pulumi.Input.encodeList<SubstitutionRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'transformationRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<TransformationRule>,
            List<Map<String, dynamic>>
          >(
            transformationRules,
            (value) =>
                pulumi.Input.encodeList<
                  TransformationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'volumeDataRestorePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreConfigVolumeDataRestorePolicy,
            String
          >(volumeDataRestorePolicy, (value) => value.wireValue),
    };
  }

  factory RestoreConfig.fromMap(Map<String, dynamic> map) {
    return RestoreConfig(
      allNamespaces: (() {
        final guardedValue = map['allNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clusterResourceConflictPolicy: (() {
        final guardedValue = map['clusterResourceConflictPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreConfigClusterResourceConflictPolicy.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      clusterResourceRestoreScope: (() {
        final guardedValue = map['clusterResourceRestoreScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterResourceRestoreScope.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      excludedNamespaces: (() {
        final guardedValue = map['excludedNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Namespaces.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      namespacedResourceRestoreMode: (() {
        final guardedValue = map['namespacedResourceRestoreMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreConfigNamespacedResourceRestoreMode.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      noNamespaces: (() {
        final guardedValue = map['noNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      selectedApplications: (() {
        final guardedValue = map['selectedApplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamespacedNames.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selectedNamespaces: (() {
        final guardedValue = map['selectedNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Namespaces.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      substitutionRules: (() {
        final guardedValue = map['substitutionRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubstitutionRule>(
            guardedValue,
            (value) => SubstitutionRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      transformationRules: (() {
        final guardedValue = map['transformationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TransformationRule>(
            guardedValue,
            (value) => TransformationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      volumeDataRestorePolicy: (() {
        final guardedValue = map['volumeDataRestorePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreConfigVolumeDataRestorePolicy.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
