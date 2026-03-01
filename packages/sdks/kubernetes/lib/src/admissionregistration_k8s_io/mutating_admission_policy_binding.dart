// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'mutating_admission_policy_binding_spec.dart';

/// MutatingAdmissionPolicyBinding binds the MutatingAdmissionPolicy with parametrized resources. MutatingAdmissionPolicyBinding and the optional parameter resource together define how cluster administrators configure policies for clusters.
///
/// For a given admission request, each binding will cause its policy to be evaluated N times, where N is 1 for policies/bindings that don't use params, otherwise N is the number of parameters selected by the binding. Each evaluation is constrained by a [runtime cost budget](https://kubernetes.io/docs/reference/using-api/cel/#runtime-cost-budget).
///
/// Adding/removing policies, bindings, or params can not affect whether a given (policy, binding, param) combination is within its own CEL budget.
class MutatingAdmissionPolicyBinding {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;
  /// Specification of the desired behavior of the MutatingAdmissionPolicyBinding.
  final MutatingAdmissionPolicyBindingSpec? spec;

  /// Creates a new [MutatingAdmissionPolicyBinding].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] Specification of the desired behavior of the MutatingAdmissionPolicyBinding.
  MutatingAdmissionPolicyBinding({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory MutatingAdmissionPolicyBinding.fromMap(Map<String, dynamic> map) {
    return MutatingAdmissionPolicyBinding(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : MutatingAdmissionPolicyBindingSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

