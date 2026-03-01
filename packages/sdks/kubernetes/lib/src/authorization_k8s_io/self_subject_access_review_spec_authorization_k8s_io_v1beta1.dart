// ignore_for_file: unused_element, unnecessary_cast

import 'non_resource_attributes_authorization_k8s_io_v1beta1.dart';
import 'resource_attributes_authorization_k8s_io_v1beta1.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SelfSubjectAccessReviewSpecAuthorizationK8sIoV1beta1 {
  /// NonResourceAttributes describes information for a non-resource access request
  final NonResourceAttributesAuthorizationK8sIoV1beta1? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final ResourceAttributesAuthorizationK8sIoV1beta1? resourceAttributes;

  /// Creates a new [SelfSubjectAccessReviewSpecAuthorizationK8sIoV1beta1].
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  SelfSubjectAccessReviewSpecAuthorizationK8sIoV1beta1({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceAttributes': ?nonResourceAttributes == null ? null : nonResourceAttributes!.toMap(),
      'resourceAttributes': ?resourceAttributes == null ? null : resourceAttributes!.toMap(),
    };
  }

  factory SelfSubjectAccessReviewSpecAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewSpecAuthorizationK8sIoV1beta1(
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : NonResourceAttributesAuthorizationK8sIoV1beta1.fromMap((map['nonResourceAttributes'] as Map).cast<String, dynamic>()),
      resourceAttributes: map['resourceAttributes'] == null ? null : ResourceAttributesAuthorizationK8sIoV1beta1.fromMap((map['resourceAttributes'] as Map).cast<String, dynamic>()),
    );
  }
}

