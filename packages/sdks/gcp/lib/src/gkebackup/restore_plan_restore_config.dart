// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_cluster_resource_restore_scope.dart';
import 'restore_plan_restore_config_excluded_namespaces.dart';
import 'restore_plan_restore_config_restore_order.dart';
import 'restore_plan_restore_config_selected_applications.dart';
import 'restore_plan_restore_config_selected_namespaces.dart';
import 'restore_plan_restore_config_transformation_rule.dart';
import 'restore_plan_restore_config_volume_data_restore_policy_binding.dart';

class RestorePlanRestoreConfig {
  /// If True, restore all namespaced resources in the Backup.
  /// Setting this field to False will result in an error.
  final pulumi.Input<bool>? allNamespaces;
  /// Defines the behavior for handling the situation where cluster-scoped resources
  /// being restored already exist in the target cluster.
  /// This MUST be set to a value other than `CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED`
  /// if `clusterResourceRestoreScope` is anyting other than `noGroupKinds`.
  /// See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#clusterresourceconflictpolicy
  /// for more information on each policy option.
  /// Possible values are: `USE_EXISTING_VERSION`, `USE_BACKUP_VERSION`.
  final pulumi.Input<String>? clusterResourceConflictPolicy;
  /// Identifies the cluster-scoped resources to restore from the Backup.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfigClusterResourceRestoreScope>? clusterResourceRestoreScope;
  /// A list of selected namespaces excluded from restoration.
  /// All namespaces except those in this list will be restored.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfigExcludedNamespaces>? excludedNamespaces;
  /// Defines the behavior for handling the situation where sets of namespaced resources
  /// being restored already exist in the target cluster.
  /// This MUST be set to a value other than `NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED`
  /// if the `namespacedResourceRestoreScope` is anything other than `noNamespaces`.
  /// See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#namespacedresourcerestoremode
  /// for more information on each mode.
  /// Possible values are: `DELETE_AND_RESTORE`, `FAIL_ON_CONFLICT`, `MERGE_SKIP_ON_CONFLICT`, `MERGE_REPLACE_VOLUME_ON_CONFLICT`, `MERGE_REPLACE_ON_CONFLICT`.
  final pulumi.Input<String>? namespacedResourceRestoreMode;
  /// Do not restore any namespaced resources if set to "True".
  /// Specifying this field to "False" is not allowed.
  final pulumi.Input<bool>? noNamespaces;
  /// It contains custom ordering to use on a Restore.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfigRestoreOrder>? restoreOrder;
  /// A list of selected ProtectedApplications to restore.
  /// The listed ProtectedApplications and all the resources
  /// to which they refer will be restored.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfigSelectedApplications>? selectedApplications;
  /// A list of selected namespaces to restore from the Backup.
  /// The listed Namespaces and all resources contained in them will be restored.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfigSelectedNamespaces>? selectedNamespaces;
  /// A list of transformation rules to be applied against Kubernetes
  /// resources as they are selected for restoration from a Backup.
  /// Rules are executed in order defined - this order matters,
  /// as changes made by a rule may impact the filtering logic of subsequent
  /// rules. An empty list means no transformation will occur.
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigTransformationRule>>? transformationRules;
  /// Specifies the mechanism to be used to restore volume data.
  /// This should be set to a value other than `NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED`
  /// if the `namespacedResourceRestoreScope` is anything other than `noNamespaces`.
  /// If not specified, it will be treated as `NO_VOLUME_DATA_RESTORATION`.
  /// See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
  /// for more information on each policy option.
  /// Possible values are: `RESTORE_VOLUME_DATA_FROM_BACKUP`, `REUSE_VOLUME_HANDLE_FROM_BACKUP`, `NO_VOLUME_DATA_RESTORATION`.
  final pulumi.Input<String>? volumeDataRestorePolicy;
  /// A table that binds volumes by their scope to a restore policy. Bindings
  /// must have a unique scope. Any volumes not scoped in the bindings are
  /// subject to the policy defined in volume_data_restore_policy.
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigVolumeDataRestorePolicyBinding>>? volumeDataRestorePolicyBindings;

  /// Creates a new [RestorePlanRestoreConfig].
  /// [allNamespaces] If True, restore all namespaced resources in the Backup.
  /// [clusterResourceConflictPolicy] Defines the behavior for handling the situation where cluster-scoped resources
  /// [clusterResourceRestoreScope] Identifies the cluster-scoped resources to restore from the Backup.
  /// [excludedNamespaces] A list of selected namespaces excluded from restoration.
  /// [namespacedResourceRestoreMode] Defines the behavior for handling the situation where sets of namespaced resources
  /// [noNamespaces] Do not restore any namespaced resources if set to "True".
  /// [restoreOrder] It contains custom ordering to use on a Restore.
  /// [selectedApplications] A list of selected ProtectedApplications to restore.
  /// [selectedNamespaces] A list of selected namespaces to restore from the Backup.
  /// [transformationRules] A list of transformation rules to be applied against Kubernetes
  /// [volumeDataRestorePolicy] Specifies the mechanism to be used to restore volume data.
  /// [volumeDataRestorePolicyBindings] A table that binds volumes by their scope to a restore policy. Bindings
  RestorePlanRestoreConfig({
    this.allNamespaces,
    this.clusterResourceConflictPolicy,
    this.clusterResourceRestoreScope,
    this.excludedNamespaces,
    this.namespacedResourceRestoreMode,
    this.noNamespaces,
    this.restoreOrder,
    this.selectedApplications,
    this.selectedNamespaces,
    this.transformationRules,
    this.volumeDataRestorePolicy,
    this.volumeDataRestorePolicyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': ?allNamespaces,
      'clusterResourceConflictPolicy': ?clusterResourceConflictPolicy,
      'clusterResourceRestoreScope': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfigClusterResourceRestoreScope, Map<String, dynamic>>(clusterResourceRestoreScope, (value) => value.toMap()),
      'excludedNamespaces': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfigExcludedNamespaces, Map<String, dynamic>>(excludedNamespaces, (value) => value.toMap()),
      'namespacedResourceRestoreMode': ?namespacedResourceRestoreMode,
      'noNamespaces': ?noNamespaces,
      'restoreOrder': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfigRestoreOrder, Map<String, dynamic>>(restoreOrder, (value) => value.toMap()),
      'selectedApplications': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfigSelectedApplications, Map<String, dynamic>>(selectedApplications, (value) => value.toMap()),
      'selectedNamespaces': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfigSelectedNamespaces, Map<String, dynamic>>(selectedNamespaces, (value) => value.toMap()),
      'transformationRules': ?pulumi.Input.mapOptionalInputValue<List<RestorePlanRestoreConfigTransformationRule>, List<Map<String, dynamic>>>(transformationRules, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigTransformationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeDataRestorePolicy': ?volumeDataRestorePolicy,
      'volumeDataRestorePolicyBindings': ?pulumi.Input.mapOptionalInputValue<List<RestorePlanRestoreConfigVolumeDataRestorePolicyBinding>, List<Map<String, dynamic>>>(volumeDataRestorePolicyBindings, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigVolumeDataRestorePolicyBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestorePlanRestoreConfig.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfig(
      allNamespaces: (() { final guardedValue = map['allNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterResourceConflictPolicy: (() { final guardedValue = map['clusterResourceConflictPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterResourceRestoreScope: (() { final guardedValue = map['clusterResourceRestoreScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePlanRestoreConfigClusterResourceRestoreScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludedNamespaces: (() { final guardedValue = map['excludedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePlanRestoreConfigExcludedNamespaces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespacedResourceRestoreMode: (() { final guardedValue = map['namespacedResourceRestoreMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noNamespaces: (() { final guardedValue = map['noNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restoreOrder: (() { final guardedValue = map['restoreOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePlanRestoreConfigRestoreOrder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectedApplications: (() { final guardedValue = map['selectedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePlanRestoreConfigSelectedApplications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectedNamespaces: (() { final guardedValue = map['selectedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePlanRestoreConfigSelectedNamespaces.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformationRules: (() { final guardedValue = map['transformationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestorePlanRestoreConfigTransformationRule>(guardedValue, (value) => RestorePlanRestoreConfigTransformationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeDataRestorePolicy: (() { final guardedValue = map['volumeDataRestorePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeDataRestorePolicyBindings: (() { final guardedValue = map['volumeDataRestorePolicyBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestorePlanRestoreConfigVolumeDataRestorePolicyBinding>(guardedValue, (value) => RestorePlanRestoreConfigVolumeDataRestorePolicyBinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

