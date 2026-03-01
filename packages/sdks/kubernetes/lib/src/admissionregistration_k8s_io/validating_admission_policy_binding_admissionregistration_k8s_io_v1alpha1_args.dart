// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'validating_admission_policy_binding_spec_admissionregistration_k8s_io_v1alpha1.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1alpha1_validating_admission_policy_binding_admissionregistration_k8s_io_v1alpha1_args_doc}
/// The set of arguments for ValidatingAdmissionPolicyBinding.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1alpha1_validating_admission_policy_binding_admissionregistration_k8s_io_v1alpha1_args_doc}
class ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  final pulumi.Input<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1>? spec;

  /// Creates a new [ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asOptionalInput<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1>(ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

