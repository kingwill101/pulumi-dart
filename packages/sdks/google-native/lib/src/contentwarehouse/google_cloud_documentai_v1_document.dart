// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_entity.dart';
import 'google_cloud_documentai_v1_document_entity_relation.dart';
import 'google_cloud_documentai_v1_document_page.dart';
import 'google_cloud_documentai_v1_document_revision.dart';
import 'google_cloud_documentai_v1_document_shard_info.dart';
import 'google_cloud_documentai_v1_document_style.dart';
import 'google_cloud_documentai_v1_document_text_change.dart';
import 'google_rpc_status.dart';

/// Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.
class GoogleCloudDocumentaiV1Document {
  /// Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.
  final pulumi.Input<String>? content;
  /// A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentEntity>>? entities;
  /// Placeholder. Relationship among Document.entities.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentEntityRelation>>? entityRelations;
  /// Any error that occurred while processing this document.
  final pulumi.Input<GoogleRpcStatus>? error;
  /// An IANA published [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml).
  final pulumi.Input<String>? mimeType;
  /// Visual page layout for the Document.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPage>>? pages;
  /// Placeholder. Revision history of this document.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentRevision>>? revisions;
  /// Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentShardInfo>? shardInfo;
  /// Optional. UTF-8 encoded text in reading order from the document.
  final pulumi.Input<String>? text;
  /// Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentTextChange>>? textChanges;
  /// Styles for the Document.text.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentStyle>>? textStyles;
  /// Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. For more information, refer to [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  final pulumi.Input<String>? uri;

  /// Creates a new [GoogleCloudDocumentaiV1Document].
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
  GoogleCloudDocumentaiV1Document({
    this.content,
    this.entities,
    this.entityRelations,
    this.error,
    this.mimeType,
    this.pages,
    this.revisions,
    this.shardInfo,
    this.text,
    this.textChanges,
    this.textStyles,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entityRelations': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentEntityRelation>, List<Map<String, dynamic>>>(entityRelations, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentEntityRelation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'error': ?pulumi.Input.mapOptionalInputValue<GoogleRpcStatus, Map<String, dynamic>>(error, (value) => value.toMap()),
      'mimeType': ?mimeType,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revisions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentRevision>, List<Map<String, dynamic>>>(revisions, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentRevision, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shardInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentShardInfo, Map<String, dynamic>>(shardInfo, (value) => value.toMap()),
      'text': ?text,
      'textChanges': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentTextChange>, List<Map<String, dynamic>>>(textChanges, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentTextChange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textStyles': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentStyle>, List<Map<String, dynamic>>>(textStyles, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentStyle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uri': ?uri,
    };
  }

  factory GoogleCloudDocumentaiV1Document.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1Document(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntity>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      entityRelations: (() { final guardedValue = map['entityRelations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentEntityRelation>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentEntityRelation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleRpcStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mimeType: (() { final guardedValue = map['mimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pages: (() { final guardedValue = map['pages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPage>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentPage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      revisions: (() { final guardedValue = map['revisions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentRevision>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentRevision.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shardInfo: (() { final guardedValue = map['shardInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentShardInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textChanges: (() { final guardedValue = map['textChanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentTextChange>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentTextChange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textStyles: (() { final guardedValue = map['textStyles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentStyle>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentStyle.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

