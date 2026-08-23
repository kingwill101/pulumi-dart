// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_entity_relation_response.dart';
import 'google_cloud_documentai_v1_document_entity_response.dart';
import 'google_cloud_documentai_v1_document_page_response.dart';
import 'google_cloud_documentai_v1_document_revision_response.dart';
import 'google_cloud_documentai_v1_document_shard_info_response.dart';
import 'google_cloud_documentai_v1_document_style_response.dart';
import 'google_cloud_documentai_v1_document_text_change_response.dart';
import 'google_rpc_status_response.dart';

/// Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.
class GoogleCloudDocumentaiV1DocumentResponse {
  /// Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
  final pulumi.Input<String> content;
  /// A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentEntityResponse>> entities;
  /// Placeholder. Relationship among Document.entities.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentEntityRelationResponse>> entityRelations;
  /// Any error that occurred while processing this document.
  final pulumi.Input<GoogleRpcStatusResponse> error;
  /// An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml).
  final pulumi.Input<String> mimeType;
  /// Visual page layout for the Document.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageResponse>> pages;
  /// Placeholder. Revision history of this document.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentRevisionResponse>> revisions;
  /// Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentShardInfoResponse> shardInfo;
  /// Optional. UTF-8 encoded text in reading order from the document.
  final pulumi.Input<String> text;
  /// Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentTextChangeResponse>> textChanges;
  /// Styles for the Document.text.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentStyleResponse>> textStyles;
  /// Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. For more information, refer to [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentResponse].
  /// [content] Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
  /// [entities] A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.
  /// [entityRelations] Placeholder. Relationship among Document.entities.
  /// [error] Any error that occurred while processing this document.
  /// [mimeType] An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml).
  /// [pages] Visual page layout for the Document.
  /// [revisions] Placeholder. Revision history of this document.
  /// [shardInfo] Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.
  /// [text] Optional. UTF-8 encoded text in reading order from the document.
  /// [textChanges] Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.
  /// [textStyles] Styles for the Document.text.
  /// [uri] Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. For more information, refer to [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  const GoogleCloudDocumentaiV1DocumentResponse({
    required this.content,
    required this.entities,
    required this.entityRelations,
    required this.error,
    required this.mimeType,
    required this.pages,
    required this.revisions,
    required this.shardInfo,
    required this.text,
    required this.textChanges,
    required this.textStyles,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'entities': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentEntityResponse>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentEntityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityRelations': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentEntityRelationResponse>, List<Map<String, dynamic>>>(entityRelations, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentEntityRelationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'error': pulumi.Input.mapInputValue<GoogleRpcStatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'mimeType': mimeType,
      'pages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageResponse>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revisions': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentRevisionResponse>, List<Map<String, dynamic>>>(revisions, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentRevisionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shardInfo': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentShardInfoResponse, Map<String, dynamic>>(shardInfo, (value) => value.toMap()),
      'text': text,
      'textChanges': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentTextChangeResponse>, List<Map<String, dynamic>>>(textChanges, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentTextChangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textStyles': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentStyleResponse>, List<Map<String, dynamic>>>(textStyles, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentStyleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uri': uri,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentResponse(
      content: pulumi.Input.fromValue(map['content'] as String),
      entities: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntityResponse>(map['entities']!, (value) => GoogleCloudDocumentaiV1DocumentEntityResponse.fromMap((value as Map).cast<String, dynamic>()))),
      entityRelations: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntityRelationResponse>(map['entityRelations']!, (value) => GoogleCloudDocumentaiV1DocumentEntityRelationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      error: pulumi.Input.fromValue(GoogleRpcStatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
      pages: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageResponse>(map['pages']!, (value) => GoogleCloudDocumentaiV1DocumentPageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      revisions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentRevisionResponse>(map['revisions']!, (value) => GoogleCloudDocumentaiV1DocumentRevisionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      shardInfo: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentShardInfoResponse.fromMap((map['shardInfo']! as Map).cast<String, dynamic>())),
      text: pulumi.Input.fromValue(map['text'] as String),
      textChanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentTextChangeResponse>(map['textChanges']!, (value) => GoogleCloudDocumentaiV1DocumentTextChangeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      textStyles: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentStyleResponse>(map['textStyles']!, (value) => GoogleCloudDocumentaiV1DocumentStyleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
