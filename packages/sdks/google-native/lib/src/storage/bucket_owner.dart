// ignore_for_file: unused_element, unnecessary_cast


/// The owner of the bucket. This is always the project team's owner group.
class BucketOwner {
  /// The entity, in the form project-owner-projectId.
  final String? entity;
  /// The ID for the entity.
  final String? entityId;

  /// Creates a new [BucketOwner].
  /// [entity] The entity, in the form project-owner-projectId.
  /// [entityId] The ID for the entity.
  BucketOwner({
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
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
    );
  }
}

