// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_attributes_patch_authorization_k8s_io_v1beta1.dart';
import 'resource_attributes_patch_authorization_k8s_io_v1beta1.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1 {
  /// NonResourceAttributes describes information for a non-resource access request
  final pulumi.Input<NonResourceAttributesPatchAuthorizationK8sIoV1beta1>? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final pulumi.Input<ResourceAttributesPatchAuthorizationK8sIoV1beta1>? resourceAttributes;

  /// Creates a new [SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1].
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceAttributes': ?pulumi.Input.mapOptionalInputValue<NonResourceAttributesPatchAuthorizationK8sIoV1beta1, Map<String, dynamic>>(nonResourceAttributes, (value) => value.toMap()),
      'resourceAttributes': ?pulumi.Input.mapOptionalInputValue<ResourceAttributesPatchAuthorizationK8sIoV1beta1, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
    };
  }

  factory SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1(
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : (NonResourceAttributesPatchAuthorizationK8sIoV1beta1.fromMap((map['nonResourceAttributes'] as Map).cast<String, dynamic>())).input(),
      resourceAttributes: map['resourceAttributes'] == null ? null : (ResourceAttributesPatchAuthorizationK8sIoV1beta1.fromMap((map['resourceAttributes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

