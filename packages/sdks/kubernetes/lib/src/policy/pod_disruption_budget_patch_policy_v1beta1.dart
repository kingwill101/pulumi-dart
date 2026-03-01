// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'pod_disruption_budget_spec_patch_policy_v1beta1.dart';
import 'pod_disruption_budget_status_patch_policy_v1beta1.dart';

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudgetPatchPolicyV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMetaPatch? metadata;
  /// Specification of the desired behavior of the PodDisruptionBudget.
  final PodDisruptionBudgetSpecPatchPolicyV1beta1? spec;
  /// Most recently observed status of the PodDisruptionBudget.
  final PodDisruptionBudgetStatusPatchPolicyV1beta1? status;

  /// Creates a new [PodDisruptionBudgetPatchPolicyV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Specification of the desired behavior of the PodDisruptionBudget.
  /// [status] Most recently observed status of the PodDisruptionBudget.
  PodDisruptionBudgetPatchPolicyV1beta1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory PodDisruptionBudgetPatchPolicyV1beta1.fromMap(Map<String, dynamic> map) {
    return PodDisruptionBudgetPatchPolicyV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : PodDisruptionBudgetSpecPatchPolicyV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : PodDisruptionBudgetStatusPatchPolicyV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

