// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'self_subject_review_status_authentication_k8s_io_v1alpha1.dart';

/// SelfSubjectReview contains the user information that the kube-apiserver has about the user making this request. When using impersonation, users will receive the user info of the user being impersonated.
class SelfSubjectReviewAuthenticationK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// Status is filled in by the server with the user attributes.
  final SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1? status;

  /// Creates a new [SelfSubjectReviewAuthenticationK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [status] Status is filled in by the server with the user attributes.
  SelfSubjectReviewAuthenticationK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory SelfSubjectReviewAuthenticationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewAuthenticationK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

