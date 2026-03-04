// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelation {
  /// Object entity id.
  final pulumi.Input<String>? objectId;

  /// Relationship description.
  final pulumi.Input<String>? relation;

  /// Subject entity id.
  final pulumi.Input<String>? subjectId;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityRelation].
  /// [objectId] Object entity id.
  /// [relation] Relationship description.
  /// [subjectId] Subject entity id.
  GoogleCloudDocumentaiV1DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'relation': ?relation,
      'subjectId': ?subjectId,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityRelation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentEntityRelation(
      objectId: (() {
        final guardedValue = map['objectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      relation: (() {
        final guardedValue = map['relation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subjectId: (() {
        final guardedValue = map['subjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
