// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_document_content_response.dart';

/// Result data returned by getDocument.
class GetDocumentResult {
  /// The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  final GoogleCloudDiscoveryengineV1alphaDocumentContentResponse content;
  /// This field is OUTPUT_ONLY. It contains derived data that are not in the original input document.
  final Map<String, String> derivedStructData;
  /// The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  final String jsonData;
  /// Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String name;
  /// The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final String parentDocumentId;
  /// The identifier of the schema located in the same data store.
  final String schemaId;
  /// The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  final Map<String, String> structData;

  /// Creates a new [GetDocumentResult].
  /// [content] The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  /// [derivedStructData] This field is OUTPUT_ONLY. It contains derived data that are not in the original input document.
  /// [jsonData] The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  /// [name] Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [parentDocumentId] The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  /// [schemaId] The identifier of the schema located in the same data store.
  /// [structData] The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  const GetDocumentResult({
    required this.content,
    required this.derivedStructData,
    required this.jsonData,
    required this.name,
    required this.parentDocumentId,
    required this.schemaId,
    required this.structData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content.toMap(),
      'derivedStructData': derivedStructData,
      'jsonData': jsonData,
      'name': name,
      'parentDocumentId': parentDocumentId,
      'schemaId': schemaId,
      'structData': structData,
    };
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      content: GoogleCloudDiscoveryengineV1alphaDocumentContentResponse.fromMap((map['content']! as Map).cast<String, dynamic>()),
      derivedStructData: (map['derivedStructData'] as Map).cast<String, String>(),
      jsonData: map['jsonData'] as String,
      name: map['name'] as String,
      parentDocumentId: map['parentDocumentId'] as String,
      schemaId: map['schemaId'] as String,
      structData: (map['structData'] as Map).cast<String, String>(),
    );
  }
}

