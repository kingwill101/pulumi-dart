// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_attributes.dart';
import 'resource_attributes.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of resourceAttributes and nonResourceAttributes must be set
class SelfSubjectAccessReviewSpec {
  /// nonResourceAttributes describes information for a non-resource access request
  final pulumi.Input<NonResourceAttributes>? nonResourceAttributes;
  /// resourceAttributes describes information for a resource access request
  final pulumi.Input<ResourceAttributes>? resourceAttributes;

  /// Creates a new [SelfSubjectAccessReviewSpec].
  /// [nonResourceAttributes] nonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] resourceAttributes describes information for a resource access request
  const SelfSubjectAccessReviewSpec({
    this.nonResourceAttributes,
    this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceAttributes': ?pulumi.Input.mapOptionalInputValue<NonResourceAttributes, Map<String, dynamic>>(nonResourceAttributes, (value) => value.toMap()),
      'resourceAttributes': ?pulumi.Input.mapOptionalInputValue<ResourceAttributes, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
    };
  }

  factory SelfSubjectAccessReviewSpec.fromMap(Map<String, dynamic> map) {
    return SelfSubjectAccessReviewSpec(
      nonResourceAttributes: (() { final guardedValue = map['nonResourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NonResourceAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceAttributes: (() { final guardedValue = map['resourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
