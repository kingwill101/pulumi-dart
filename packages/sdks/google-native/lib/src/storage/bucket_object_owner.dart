// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The owner of the object. This will always be the uploader of the object.
class BucketObjectOwner {
  /// The entity, in the form user-userId.
  final pulumi.Input<String>? entity;
  /// The ID for the entity.
  final pulumi.Input<String>? entityId;

  /// Creates a new [BucketObjectOwner].
  /// [entity] The entity, in the form user-userId.
  /// [entityId] The ID for the entity.
  const BucketObjectOwner({
    this.entity,
    this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'entityId': ?entityId,
    };
  }

  factory BucketObjectOwner.fromMap(Map<String, dynamic> map) {
    return BucketObjectOwner(
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
