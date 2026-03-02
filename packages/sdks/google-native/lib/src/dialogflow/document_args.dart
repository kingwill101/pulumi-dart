// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_knowledge_types_item.dart';

/// {@template pulumi_dialogflow_v2_document_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_document_args_doc}
class DocumentArgs {
  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  final pulumi.Input<String>? contentUri;
  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final pulumi.Input<String> displayName;
  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  final pulumi.Input<bool>? enableAutoReload;
  final pulumi.Input<String> knowledgeBaseId;
  /// The knowledge type of document content.
  final pulumi.Input<List<DocumentKnowledgeTypesItem>> knowledgeTypes;
  final pulumi.Input<String>? location;
  /// Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The MIME type of this document.
  final pulumi.Input<String> mimeType;
  /// Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  final pulumi.Input<String>? rawContent;

  /// Creates a new [DocumentArgs].
  /// [contentUri] The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  /// [displayName] The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  /// [enableAutoReload] Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  /// [knowledgeBaseId] Required.
  /// [knowledgeTypes] The knowledge type of document content.
  /// [location] Optional.
  /// [metadata] Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  /// [mimeType] The MIME type of this document.
  /// [name] Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  /// [project] Optional.
  /// [rawContent] The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  DocumentArgs({
    this.contentUri,
    required this.displayName,
    this.enableAutoReload,
    required this.knowledgeBaseId,
    required this.knowledgeTypes,
    this.location,
    this.metadata,
    required this.mimeType,
    this.name,
    this.project,
    this.rawContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentUri': ?contentUri,
      'displayName': displayName,
      'enableAutoReload': ?enableAutoReload,
      'knowledgeBaseId': knowledgeBaseId,
      'knowledgeTypes': pulumi.Input.mapInputValue<List<DocumentKnowledgeTypesItem>, List<String>>(knowledgeTypes, (value) => pulumi.Input.encodeList<DocumentKnowledgeTypesItem, String>(value, (value) => value.value)),
      'location': ?location,
      'metadata': ?metadata,
      'mimeType': mimeType,
      'name': ?name,
      'project': ?project,
      'rawContent': ?rawContent,
    };
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      contentUri: map['contentUri'] == null ? null : (map['contentUri']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      enableAutoReload: map['enableAutoReload'] == null ? null : (map['enableAutoReload']! as bool).input(),
      knowledgeBaseId: (map['knowledgeBaseId'] as String).input(),
      knowledgeTypes: (pulumi.Input.decodeList<DocumentKnowledgeTypesItem>(map['knowledgeTypes'], (value) => DocumentKnowledgeTypesItem.fromValue(value as String))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      mimeType: (map['mimeType'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rawContent: map['rawContent'] == null ? null : (map['rawContent']! as String).input(),
    );
  }
}

