// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_document_reload_status_response.dart';

/// Result data returned by getDocument.
class GetDocumentResult {
  /// The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  final String contentUri;

  /// The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final String displayName;

  /// Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  final bool enableAutoReload;

  /// The knowledge type of document content.
  final List<String> knowledgeTypes;

  /// The time and status of the latest reload. This reload may have been triggered automatically or manually and may not have succeeded.
  final GoogleCloudDialogflowV2DocumentReloadStatusResponse latestReloadStatus;

  /// Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  final Map<String, String> metadata;

  /// The MIME type of this document.
  final String mimeType;

  /// Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  final String name;

  /// The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  final String rawContent;

  /// The current state of the document.
  final String state;

  /// Creates a new [GetDocumentResult].
  /// [contentUri] The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  /// [displayName] The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  /// [enableAutoReload] Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISSION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  /// [knowledgeTypes] The knowledge type of document content.
  /// [latestReloadStatus] The time and status of the latest reload. This reload may have been triggered automatically or manually and may not have succeeded.
  /// [metadata] Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  /// [mimeType] The MIME type of this document.
  /// [name] Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  /// [rawContent] The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  /// [state] The current state of the document.
  GetDocumentResult({
    required this.contentUri,
    required this.displayName,
    required this.enableAutoReload,
    required this.knowledgeTypes,
    required this.latestReloadStatus,
    required this.metadata,
    required this.mimeType,
    required this.name,
    required this.rawContent,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentUri': contentUri,
      'displayName': displayName,
      'enableAutoReload': enableAutoReload,
      'knowledgeTypes': knowledgeTypes,
      'latestReloadStatus': latestReloadStatus.toMap(),
      'metadata': metadata,
      'mimeType': mimeType,
      'name': name,
      'rawContent': rawContent,
      'state': state,
    };
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      contentUri: map['contentUri'] as String,
      displayName: map['displayName'] as String,
      enableAutoReload: map['enableAutoReload'] as bool,
      knowledgeTypes: (map['knowledgeTypes'] as List).cast<String>(),
      latestReloadStatus:
          GoogleCloudDialogflowV2DocumentReloadStatusResponse.fromMap(
            (map['latestReloadStatus']! as Map).cast<String, dynamic>(),
          ),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      mimeType: map['mimeType'] as String,
      name: map['name'] as String,
      rawContent: map['rawContent'] as String,
      state: map['state'] as String,
    );
  }
}
