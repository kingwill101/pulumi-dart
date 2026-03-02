// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'validating_admission_policy_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicyList is a list of ValidatingAdmissionPolicy.
class ValidatingAdmissionPolicyListAdmissionregistrationK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// List of ValidatingAdmissionPolicy.
  final pulumi.Input<List<ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [ValidatingAdmissionPolicyListAdmissionregistrationK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] List of ValidatingAdmissionPolicy.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  ValidatingAdmissionPolicyListAdmissionregistrationK8sIoV1alpha1({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.mapInputValue<List<ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicyListAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyListAdmissionregistrationK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      items: (pulumi.Input.decodeList<ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1>(map['items'], (value) => ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

