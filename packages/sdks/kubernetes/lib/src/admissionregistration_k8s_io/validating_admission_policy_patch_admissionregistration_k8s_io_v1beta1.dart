// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'validating_admission_policy_spec_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'validating_admission_policy_status_patch_admissionregistration_k8s_io_v1beta1.dart';

/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
class ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMetaPatch? metadata;
  /// Specification of the desired behavior of the ValidatingAdmissionPolicy.
  final ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1? spec;
  /// The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
  final ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1? status;

  /// Creates a new [ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [spec] Specification of the desired behavior of the ValidatingAdmissionPolicy.
  /// [status] The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
  ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1beta1({
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

  factory ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ValidatingAdmissionPolicySpecPatchAdmissionregistrationK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

