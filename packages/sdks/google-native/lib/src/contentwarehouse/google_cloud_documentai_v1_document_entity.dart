// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_entity_normalized_value.dart';
import 'google_cloud_documentai_v1_document_page_anchor.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';

/// An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntity {
  /// Optional. Confidence of detected Schema entity. Range `[0, 1]`.
  final pulumi.Input<double>? confidence;
  /// Optional. Canonical id. This will be a unique value in the entity list for this document.
  final pulumi.Input<String>? id;
  /// Optional. Deprecated. Use `id` field instead.
  final pulumi.Input<String>? mentionId;
  /// Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  final pulumi.Input<String>? mentionText;
  /// Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentEntityNormalizedValue>? normalizedValue;
  /// Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageAnchor>? pageAnchor;
  /// Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentEntity>>? properties;
  /// Optional. The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;
  /// Optional. Whether the entity will be redacted for de-identification purposes.
  final pulumi.Input<bool>? redacted;
  /// Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchor>? textAnchor;
  /// Entity type from a schema e.g. `Address`.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntity].
  /// [confidence] Optional. Confidence of detected Schema entity. Range `[0, 1]`.
  /// [id] Optional. Canonical id. This will be a unique value in the entity list for this document.
  /// [mentionId] Optional. Deprecated. Use `id` field instead.
  /// [mentionText] Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  /// [normalizedValue] Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  /// [pageAnchor] Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  /// [properties] Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  /// [provenance] Optional. The history of this annotation.
  /// [redacted] Optional. Whether the entity will be redacted for de-identification purposes.
  /// [textAnchor] Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  /// [type] Entity type from a schema e.g. `Address`.
  GoogleCloudDocumentaiV1DocumentEntity({
    this.confidence,
    this.id,
    this.mentionId,
    this.mentionText,
    this.normalizedValue,
    this.pageAnchor,
    this.properties,
    this.provenance,
    this.redacted,
    this.textAnchor,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'id': ?id,
      'mentionId': ?mentionId,
      'mentionText': ?mentionText,
      'normalizedValue': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentEntityNormalizedValue, Map<String, dynamic>>(normalizedValue, (value) => value.toMap()),
      'pageAnchor': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageAnchor, Map<String, dynamic>>(pageAnchor, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentEntity>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provenance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentProvenance, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'redacted': ?redacted,
      'textAnchor': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentTextAnchor, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntity.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntity(
      confidence: map['confidence'] == null ? null : (map['confidence']! as double).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      mentionId: map['mentionId'] == null ? null : (map['mentionId']! as String).input(),
      mentionText: map['mentionText'] == null ? null : (map['mentionText']! as String).input(),
      normalizedValue: map['normalizedValue'] == null ? null : (GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromMap((map['normalizedValue']! as Map).cast<String, dynamic>())).input(),
      pageAnchor: map['pageAnchor'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageAnchor.fromMap((map['pageAnchor']! as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntity>(map['properties']!, (value) => GoogleCloudDocumentaiV1DocumentEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provenance: map['provenance'] == null ? null : (GoogleCloudDocumentaiV1DocumentProvenance.fromMap((map['provenance']! as Map).cast<String, dynamic>())).input(),
      redacted: map['redacted'] == null ? null : (map['redacted']! as bool).input(),
      textAnchor: map['textAnchor'] == null ? null : (GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap((map['textAnchor']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

