// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'self_subject_access_review_spec.dart';
import 'subject_access_review_status.dart';

/// SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
class SelfSubjectAccessReview {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// Spec holds information about the request being evaluated.  user and groups must be empty
  final SelfSubjectAccessReviewSpec spec;
  /// Status is filled in by the server and indicates whether the request is allowed or not
  final SubjectAccessReviewStatus? status;

  /// Creates a new [SelfSubjectAccessReview].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Spec holds information about the request being evaluated.  user and groups must be empty
  /// [status] Status is filled in by the server and indicates whether the request is allowed or not
  SelfSubjectAccessReview({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory SelfSubjectAccessReview.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReview(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: SelfSubjectAccessReviewSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : SubjectAccessReviewStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

