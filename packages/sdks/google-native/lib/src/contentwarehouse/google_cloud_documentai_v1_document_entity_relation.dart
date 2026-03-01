// ignore_for_file: unused_element, unnecessary_cast


/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelation {
  /// Object entity id.
  final String? objectId;
  /// Relationship description.
  final String? relation;
  /// Subject entity id.
  final String? subjectId;

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

  factory GoogleCloudDocumentaiV1DocumentEntityRelation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityRelation(
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      relation: map['relation'] == null ? null : map['relation'] as String,
      subjectId: map['subjectId'] == null ? null : map['subjectId'] as String,
    );
  }
}

