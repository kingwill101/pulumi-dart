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
  BucketObjectOwner({
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
      entity: map['entity'] == null ? null : (map['entity']! as String).input(),
      entityId: map['entityId'] == null ? null : (map['entityId']! as String).input(),
    );
  }
}

