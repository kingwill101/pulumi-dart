// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'token_review_spec.dart';
import 'token_review_status.dart';

/// TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
class TokenReview {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// Spec holds information about the request being evaluated
  final TokenReviewSpec spec;
  /// Status is filled in by the server and indicates whether the request can be authenticated.
  final TokenReviewStatus? status;

  /// Creates a new [TokenReview].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Spec holds information about the request being evaluated
  /// [status] Status is filled in by the server and indicates whether the request can be authenticated.
  TokenReview({
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

  factory TokenReview.fromMap(Map<String, dynamic> map) {
    return TokenReview(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: TokenReviewSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : TokenReviewStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

