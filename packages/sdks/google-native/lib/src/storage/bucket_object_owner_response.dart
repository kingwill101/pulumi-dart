// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The owner of the object. This will always be the uploader of the object.
class BucketObjectOwnerResponse {
  /// The entity, in the form user-userId.
  final pulumi.Input<String> entity;

  /// The ID for the entity.
  final pulumi.Input<String> entityId;

  /// Creates a new [BucketObjectOwnerResponse].
  /// [entity] The entity, in the form user-userId.
  /// [entityId] The ID for the entity.
  BucketObjectOwnerResponse({required this.entity, required this.entityId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entity': entity, 'entityId': entityId};
  }

  factory BucketObjectOwnerResponse.fromMap(Map<String, dynamic> map) {
    return BucketObjectOwnerResponse(
      entity: pulumi.Input.fromValue(map['entity'] as String),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
    );
  }
}
