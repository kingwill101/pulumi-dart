// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'token_review_spec_patch_authentication_k8s_io_v1beta1.dart';
import 'token_review_status_patch_authentication_k8s_io_v1beta1.dart';

/// TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
class TokenReviewPatchAuthenticationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMetaPatch? metadata;
  /// Spec holds information about the request being evaluated
  final TokenReviewSpecPatchAuthenticationK8sIoV1beta1? spec;
  /// Status is filled in by the server and indicates whether the request can be authenticated.
  final TokenReviewStatusPatchAuthenticationK8sIoV1beta1? status;

  /// Creates a new [TokenReviewPatchAuthenticationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec holds information about the request being evaluated
  /// [status] Status is filled in by the server and indicates whether the request can be authenticated.
  TokenReviewPatchAuthenticationK8sIoV1beta1({
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

  factory TokenReviewPatchAuthenticationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TokenReviewPatchAuthenticationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : TokenReviewSpecPatchAuthenticationK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : TokenReviewStatusPatchAuthenticationK8sIoV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

