// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_disruption_budget_spec_patch_policy_v1beta1.dart';
import 'pod_disruption_budget_status_patch_policy_v1beta1.dart';

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudgetPatchPolicyV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Specification of the desired behavior of the PodDisruptionBudget.
  final pulumi.Input<PodDisruptionBudgetSpecPatchPolicyV1beta1>? spec;
  /// Most recently observed status of the PodDisruptionBudget.
  final pulumi.Input<PodDisruptionBudgetStatusPatchPolicyV1beta1>? status;

  /// Creates a new [PodDisruptionBudgetPatchPolicyV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Specification of the desired behavior of the PodDisruptionBudget.
  /// [status] Most recently observed status of the PodDisruptionBudget.
  const PodDisruptionBudgetPatchPolicyV1beta1({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PodDisruptionBudgetSpecPatchPolicyV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<PodDisruptionBudgetStatusPatchPolicyV1beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory PodDisruptionBudgetPatchPolicyV1beta1.fromMap(Map<String, dynamic> map) {
    return PodDisruptionBudgetPatchPolicyV1beta1(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodDisruptionBudgetSpecPatchPolicyV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodDisruptionBudgetStatusPatchPolicyV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
