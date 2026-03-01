// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'self_subject_rules_review_spec_authorization_k8s_io_v1beta1.dart';
import 'subject_rules_review_status_authorization_k8s_io_v1beta1.dart';

/// SelfSubjectRulesReview enumerates the set of actions the current user can perform within a namespace. The returned list of actions may be incomplete depending on the server's authorization mode, and any errors experienced during the evaluation. SelfSubjectRulesReview should be used by UIs to show/hide actions, or to quickly let an end user reason about their permissions. It should NOT Be used by external systems to drive authorization decisions as this raises confused deputy, cache lifetime/revocation, and correctness concerns. SubjectAccessReview, and LocalAccessReview are the correct way to defer authorization decisions to the API server.
class SelfSubjectRulesReviewAuthorizationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMeta? metadata;
  /// Spec holds information about the request being evaluated.
  final SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1 spec;
  /// Status is filled in by the server and indicates the set of actions a user can perform.
  final SubjectRulesReviewStatusAuthorizationK8sIoV1beta1? status;

  /// Creates a new [SelfSubjectRulesReviewAuthorizationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec holds information about the request being evaluated.
  /// [status] Status is filled in by the server and indicates the set of actions a user can perform.
  SelfSubjectRulesReviewAuthorizationK8sIoV1beta1({
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

  factory SelfSubjectRulesReviewAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewAuthorizationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: SelfSubjectRulesReviewSpecAuthorizationK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : SubjectRulesReviewStatusAuthorizationK8sIoV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

