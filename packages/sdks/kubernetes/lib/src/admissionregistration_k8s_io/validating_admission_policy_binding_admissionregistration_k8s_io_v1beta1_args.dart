// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'validating_admission_policy_binding_spec_admissionregistration_k8s_io_v1beta1.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1beta1_validating_admission_policy_binding_admissionregistration_k8s_io_v1beta1_args_doc}
/// The set of arguments for ValidatingAdmissionPolicyBinding.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1beta1_validating_admission_policy_binding_admissionregistration_k8s_io_v1beta1_args_doc}
class ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  final pulumi.Input<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1beta1>? spec;

  /// Creates a new [ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

