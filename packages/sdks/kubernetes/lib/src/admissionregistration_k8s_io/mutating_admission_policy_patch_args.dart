// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'mutating_admission_policy_spec_patch.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1alpha1_mutating_admission_policy_patch_args_doc}
/// The set of arguments for MutatingAdmissionPolicyPatch.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1alpha1_mutating_admission_policy_patch_args_doc}
class MutatingAdmissionPolicyPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Specification of the desired behavior of the MutatingAdmissionPolicy.
  final pulumi.Input<MutatingAdmissionPolicySpecPatch>? spec;

  /// Creates a new [MutatingAdmissionPolicyPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] Specification of the desired behavior of the MutatingAdmissionPolicy.
  MutatingAdmissionPolicyPatchArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<MutatingAdmissionPolicySpecPatch>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<MutatingAdmissionPolicySpecPatch>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<MutatingAdmissionPolicySpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory MutatingAdmissionPolicyPatchArgs.fromMap(Map<String, dynamic> map) {
    return MutatingAdmissionPolicyPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<MutatingAdmissionPolicySpecPatch>(MutatingAdmissionPolicySpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

