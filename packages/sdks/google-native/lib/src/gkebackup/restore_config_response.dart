// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_restore_scope_response.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';
import 'substitution_rule_response.dart';
import 'transformation_rule_response.dart';

/// Configuration of a restore. Next id: 13
class RestoreConfigResponse {
  /// Restore all namespaced resources in the Backup if set to "True". Specifying this field to "False" is an error.
  final pulumi.Input<bool> allNamespaces;
  /// Optional. Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.
  final pulumi.Input<String> clusterResourceConflictPolicy;
  /// Optional. Identifies the cluster-scoped resources to restore from the Backup. Not specifying it means NO cluster resource will be restored.
  final pulumi.Input<ClusterResourceRestoreScopeResponse> clusterResourceRestoreScope;
  /// A list of selected namespaces excluded from restoration. All namespaces except those in this list will be restored.
  final pulumi.Input<NamespacesResponse> excludedNamespaces;
  /// Optional. Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
  final pulumi.Input<String> namespacedResourceRestoreMode;
  /// Do not restore any namespaced resources if set to "True". Specifying this field to "False" is not allowed.
  final pulumi.Input<bool> noNamespaces;
  /// A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the resources to which they refer will be restored.
  final pulumi.Input<NamespacedNamesResponse> selectedApplications;
  /// A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources contained in them will be restored.
  final pulumi.Input<NamespacesResponse> selectedNamespaces;
  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no substitution will occur.
  final pulumi.Input<List<SubstitutionRuleResponse>> substitutionRules;
  /// Optional. A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no transformation will occur.
  final pulumi.Input<List<TransformationRuleResponse>> transformationRules;
  /// Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).
  final pulumi.Input<String> volumeDataRestorePolicy;

  /// Creates a new [RestoreConfigResponse].
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
  RestoreConfigResponse({
    required this.allNamespaces,
    required this.clusterResourceConflictPolicy,
    required this.clusterResourceRestoreScope,
    required this.excludedNamespaces,
    required this.namespacedResourceRestoreMode,
    required this.noNamespaces,
    required this.selectedApplications,
    required this.selectedNamespaces,
    required this.substitutionRules,
    required this.transformationRules,
    required this.volumeDataRestorePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNamespaces': allNamespaces,
      'clusterResourceConflictPolicy': clusterResourceConflictPolicy,
      'clusterResourceRestoreScope': pulumi.Input.mapInputValue<ClusterResourceRestoreScopeResponse, Map<String, dynamic>>(clusterResourceRestoreScope, (value) => value.toMap()),
      'excludedNamespaces': pulumi.Input.mapInputValue<NamespacesResponse, Map<String, dynamic>>(excludedNamespaces, (value) => value.toMap()),
      'namespacedResourceRestoreMode': namespacedResourceRestoreMode,
      'noNamespaces': noNamespaces,
      'selectedApplications': pulumi.Input.mapInputValue<NamespacedNamesResponse, Map<String, dynamic>>(selectedApplications, (value) => value.toMap()),
      'selectedNamespaces': pulumi.Input.mapInputValue<NamespacesResponse, Map<String, dynamic>>(selectedNamespaces, (value) => value.toMap()),
      'substitutionRules': pulumi.Input.mapInputValue<List<SubstitutionRuleResponse>, List<Map<String, dynamic>>>(substitutionRules, (value) => pulumi.Input.encodeList<SubstitutionRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformationRules': pulumi.Input.mapInputValue<List<TransformationRuleResponse>, List<Map<String, dynamic>>>(transformationRules, (value) => pulumi.Input.encodeList<TransformationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeDataRestorePolicy': volumeDataRestorePolicy,
    };
  }

  factory RestoreConfigResponse.fromMap(Map<String, dynamic> map) {
    return RestoreConfigResponse(
      allNamespaces: pulumi.Input.fromValue(map['allNamespaces'] as bool),
      clusterResourceConflictPolicy: pulumi.Input.fromValue(map['clusterResourceConflictPolicy'] as String),
      clusterResourceRestoreScope: pulumi.Input.fromValue(ClusterResourceRestoreScopeResponse.fromMap((map['clusterResourceRestoreScope']! as Map).cast<String, dynamic>())),
      excludedNamespaces: pulumi.Input.fromValue(NamespacesResponse.fromMap((map['excludedNamespaces']! as Map).cast<String, dynamic>())),
      namespacedResourceRestoreMode: pulumi.Input.fromValue(map['namespacedResourceRestoreMode'] as String),
      noNamespaces: pulumi.Input.fromValue(map['noNamespaces'] as bool),
      selectedApplications: pulumi.Input.fromValue(NamespacedNamesResponse.fromMap((map['selectedApplications']! as Map).cast<String, dynamic>())),
      selectedNamespaces: pulumi.Input.fromValue(NamespacesResponse.fromMap((map['selectedNamespaces']! as Map).cast<String, dynamic>())),
      substitutionRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubstitutionRuleResponse>(map['substitutionRules']!, (value) => SubstitutionRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      transformationRules: pulumi.Input.fromValue(pulumi.Input.decodeList<TransformationRuleResponse>(map['transformationRules']!, (value) => TransformationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      volumeDataRestorePolicy: pulumi.Input.fromValue(map['volumeDataRestorePolicy'] as String),
    );
  }
}

