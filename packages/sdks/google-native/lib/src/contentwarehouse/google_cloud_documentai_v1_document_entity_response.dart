// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_entity_normalized_value_response.dart';
import 'google_cloud_documentai_v1_document_page_anchor_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';

/// An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntityResponse {
  /// Optional. Confidence of detected Schema entity. Range `[0, 1]`.
  final pulumi.Input<double> confidence;
  /// Optional. Deprecated. Use `id` field instead.
  final pulumi.Input<String> mentionId;
  /// Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  final pulumi.Input<String> mentionText;
  /// Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse> normalizedValue;
  /// Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageAnchorResponse> pageAnchor;
  /// Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentEntityResponse>> properties;
  /// Optional. The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenanceResponse> provenance;
  /// Optional. Whether the entity will be redacted for de-identification purposes.
  final pulumi.Input<bool> redacted;
  /// Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchorResponse> textAnchor;
  /// Entity type from a schema e.g. `Address`.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityResponse].
  /// [confidence] Optional. Confidence of detected Schema entity. Range `[0, 1]`.
  /// [mentionId] Optional. Deprecated. Use `id` field instead.
  /// [mentionText] Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  /// [normalizedValue] Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  /// [pageAnchor] Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  /// [properties] Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  /// [provenance] Optional. The history of this annotation.
  /// [redacted] Optional. Whether the entity will be redacted for de-identification purposes.
  /// [textAnchor] Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  /// [type] Entity type from a schema e.g. `Address`.
  GoogleCloudDocumentaiV1DocumentEntityResponse({
    required this.confidence,
    required this.mentionId,
    required this.mentionText,
    required this.normalizedValue,
    required this.pageAnchor,
    required this.properties,
    required this.provenance,
    required this.redacted,
    required this.textAnchor,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': confidence,
      'mentionId': mentionId,
      'mentionText': mentionText,
      'normalizedValue': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse, Map<String, dynamic>>(normalizedValue, (value) => value.toMap()),
      'pageAnchor': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageAnchorResponse, Map<String, dynamic>>(pageAnchor, (value) => value.toMap()),
      'properties': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentEntityResponse>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentEntityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provenance': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentProvenanceResponse, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'redacted': redacted,
      'textAnchor': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentTextAnchorResponse, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityResponse(
      confidence: (map['confidence'] as double).input(),
      mentionId: (map['mentionId'] as String).input(),
      mentionText: (map['mentionText'] as String).input(),
      normalizedValue: (GoogleCloudDocumentaiV1DocumentEntityNormalizedValueResponse.fromMap((map['normalizedValue'] as Map).cast<String, dynamic>())).input(),
      pageAnchor: (GoogleCloudDocumentaiV1DocumentPageAnchorResponse.fromMap((map['pageAnchor'] as Map).cast<String, dynamic>())).input(),
      properties: (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntityResponse>(map['properties'], (value) => GoogleCloudDocumentaiV1DocumentEntityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provenance: (GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap((map['provenance'] as Map).cast<String, dynamic>())).input(),
      redacted: (map['redacted'] as bool).input(),
      textAnchor: (GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap((map['textAnchor'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

