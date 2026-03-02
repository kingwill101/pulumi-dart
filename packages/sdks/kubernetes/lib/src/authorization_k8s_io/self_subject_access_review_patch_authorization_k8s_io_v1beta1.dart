// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'self_subject_access_review_spec_patch_authorization_k8s_io_v1beta1.dart';
import 'subject_access_review_status_patch_authorization_k8s_io_v1beta1.dart';

/// SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
class SelfSubjectAccessReviewPatchAuthorizationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Spec holds information about the request being evaluated.  user and groups must be empty
  final pulumi.Input<SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1>? spec;
  /// Status is filled in by the server and indicates whether the request is allowed or not
  final pulumi.Input<SubjectAccessReviewStatusPatchAuthorizationK8sIoV1beta1>? status;

  /// Creates a new [SelfSubjectAccessReviewPatchAuthorizationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec holds information about the request being evaluated.  user and groups must be empty
  /// [status] Status is filled in by the server and indicates whether the request is allowed or not
  SelfSubjectAccessReviewPatchAuthorizationK8sIoV1beta1({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<SubjectAccessReviewStatusPatchAuthorizationK8sIoV1beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory SelfSubjectAccessReviewPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewPatchAuthorizationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (SubjectAccessReviewStatusPatchAuthorizationK8sIoV1beta1.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

