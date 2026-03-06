// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_document_content.dart';

/// {@template pulumi_discoveryengine_v1beta_document_discoveryengine_v1beta_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_document_discoveryengine_v1beta_args_doc}
class DocumentDiscoveryengineV1betaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> collectionId;
  /// The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  final pulumi.Input<GoogleCloudDiscoveryengineV1betaDocumentContent>? content;
  final pulumi.Input<String> dataStoreId;
  /// Required. The ID to use for the Document, which will become the final component of the Document.name. If the caller does not have permission to create the Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error is returned. This field must be unique among all Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  final pulumi.Input<String> documentId;
  /// Immutable. The identifier of the document. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final pulumi.Input<String>? id;
  /// The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  final pulumi.Input<String>? jsonData;
  final pulumi.Input<String>? location;
  /// Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;
  /// The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final pulumi.Input<String>? parentDocumentId;
  final pulumi.Input<String>? project;
  /// The identifier of the schema located in the same data store.
  final pulumi.Input<String>? schemaId;
  /// The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  final pulumi.Input<Map<String, String>>? structData;

  /// Creates a new [DocumentDiscoveryengineV1betaArgs].
  /// [branchId] Required.
  /// [collectionId] Required.
  /// [content] The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  /// [dataStoreId] Required.
  /// [documentId] Required. The ID to use for the Document, which will become the final component of the Document.name. If the caller does not have permission to create the Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error is returned. This field must be unique among all Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  /// [id] Immutable. The identifier of the document. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  /// [jsonData] The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  /// [location] Optional.
  /// [name] Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [parentDocumentId] The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  /// [project] Optional.
  /// [schemaId] The identifier of the schema located in the same data store.
  /// [structData] The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  const DocumentDiscoveryengineV1betaArgs({
    required this.branchId,
    required this.collectionId,
    this.content,
    required this.dataStoreId,
    required this.documentId,
    this.id,
    this.jsonData,
    this.location,
    this.name,
    this.parentDocumentId,
    this.project,
    this.schemaId,
    this.structData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchId': branchId,
      'collectionId': collectionId,
      'content': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1betaDocumentContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'dataStoreId': dataStoreId,
      'documentId': documentId,
      'id': ?id,
      'jsonData': ?jsonData,
      'location': ?location,
      'name': ?name,
      'parentDocumentId': ?parentDocumentId,
      'project': ?project,
      'schemaId': ?schemaId,
      'structData': ?structData,
    };
  }

  factory DocumentDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return DocumentDiscoveryengineV1betaArgs(
      branchId: pulumi.Input.fromValue(map['branchId'] as String),
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1betaDocumentContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      documentId: pulumi.Input.fromValue(map['documentId'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsonData: (() { final guardedValue = map['jsonData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentDocumentId: (() { final guardedValue = map['parentDocumentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structData: (() { final guardedValue = map['structData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

