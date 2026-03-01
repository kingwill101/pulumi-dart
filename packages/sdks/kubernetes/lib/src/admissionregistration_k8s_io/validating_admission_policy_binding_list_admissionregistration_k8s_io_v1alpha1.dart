// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'validating_admission_policy_binding_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicyBindingList is a list of ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// List of PolicyBinding.
  final List<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final ListMeta? metadata;

  /// Creates a new [ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] List of PolicyBinding.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1alpha1({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.encodeList<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(items, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: pulumi.Input.decodeList<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1>(map['items'], (value) => ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

