// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelationResponse {
  /// Object entity id.
  final pulumi.Input<String> objectId;
  /// Relationship description.
  final pulumi.Input<String> relation;
  /// Subject entity id.
  final pulumi.Input<String> subjectId;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityRelationResponse].
  /// [objectId] Object entity id.
  /// [relation] Relationship description.
  /// [subjectId] Subject entity id.
  GoogleCloudDocumentaiV1DocumentEntityRelationResponse({
    required this.objectId,
    required this.relation,
    required this.subjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'relation': relation,
      'subjectId': subjectId,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityRelationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityRelationResponse(
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      relation: pulumi.Input.fromValue(map['relation'] as String),
      subjectId: pulumi.Input.fromValue(map['subjectId'] as String),
    );
  }
}

