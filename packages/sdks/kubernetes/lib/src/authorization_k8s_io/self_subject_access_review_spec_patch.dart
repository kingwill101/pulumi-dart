// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_attributes_patch.dart';
import 'resource_attributes_patch.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of resourceAttributes and nonResourceAttributes must be set
class SelfSubjectAccessReviewSpecPatch {
  /// nonResourceAttributes describes information for a non-resource access request
  final pulumi.Input<NonResourceAttributesPatch>? nonResourceAttributes;
  /// resourceAttributes describes information for a resource access request
  final pulumi.Input<ResourceAttributesPatch>? resourceAttributes;

  /// Creates a new [SelfSubjectAccessReviewSpecPatch].
  /// [nonResourceAttributes] nonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] resourceAttributes describes information for a resource access request
  const SelfSubjectAccessReviewSpecPatch({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceAttributes': ?pulumi.Input.mapOptionalInputValue<NonResourceAttributesPatch, Map<String, dynamic>>(nonResourceAttributes, (value) => value.toMap()),
      'resourceAttributes': ?pulumi.Input.mapOptionalInputValue<ResourceAttributesPatch, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
    };
  }

  factory SelfSubjectAccessReviewSpecPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewSpecPatch(
      nonResourceAttributes: (() { final guardedValue = map['nonResourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NonResourceAttributesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceAttributes: (() { final guardedValue = map['resourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceAttributesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
