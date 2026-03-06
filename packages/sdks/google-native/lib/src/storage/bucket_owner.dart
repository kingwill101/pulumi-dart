// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The owner of the bucket. This is always the project team's owner group.
class BucketOwner {
  /// The entity, in the form project-owner-projectId.
  final pulumi.Input<String>? entity;
  /// The ID for the entity.
  final pulumi.Input<String>? entityId;

  /// Creates a new [BucketOwner].
  /// [entity] The entity, in the form project-owner-projectId.
  /// [entityId] The ID for the entity.
  const BucketOwner({
    this.entity,
    this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'entityId': ?entityId,
    };
  }

  factory BucketOwner.fromMap(Map<String, dynamic> map) {
    return BucketOwner(
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

