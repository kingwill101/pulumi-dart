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
  DocumentDiscoveryengineV1betaArgs({
    required pulumi.Output<String> branchId,
    required pulumi.Output<String> collectionId,
    pulumi.Output<GoogleCloudDiscoveryengineV1betaDocumentContent>? content,
    required pulumi.Output<String> dataStoreId,
    required pulumi.Output<String> documentId,
    pulumi.Output<String>? id,
    pulumi.Output<String>? jsonData,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentDocumentId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? schemaId,
    pulumi.Output<Map<String, String>>? structData,
  }) :
      branchId = pulumi.Input.asInput<String>(branchId),
      collectionId = pulumi.Input.asInput<String>(collectionId),
      content = pulumi.Input.asOptionalInput<GoogleCloudDiscoveryengineV1betaDocumentContent>(content),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      documentId = pulumi.Input.asInput<String>(documentId),
      id = pulumi.Input.asOptionalInput<String>(id),
      jsonData = pulumi.Input.asOptionalInput<String>(jsonData),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentDocumentId = pulumi.Input.asOptionalInput<String>(parentDocumentId),
      project = pulumi.Input.asOptionalInput<String>(project),
      schemaId = pulumi.Input.asOptionalInput<String>(schemaId),
      structData = pulumi.Input.asOptionalInput<Map<String, String>>(structData);

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
      branchId: pulumi.Output.create<String>(map['branchId'] as String),
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<GoogleCloudDiscoveryengineV1betaDocumentContent>(GoogleCloudDiscoveryengineV1betaDocumentContent.fromMap((map['content'] as Map).cast<String, dynamic>())),
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      documentId: pulumi.Output.create<String>(map['documentId'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      jsonData: map['jsonData'] == null ? null : pulumi.Output.create<String>(map['jsonData'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentDocumentId: map['parentDocumentId'] == null ? null : pulumi.Output.create<String>(map['parentDocumentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schemaId: map['schemaId'] == null ? null : pulumi.Output.create<String>(map['schemaId'] as String),
      structData: map['structData'] == null ? null : pulumi.Output.create<Map<String, String>>((map['structData'] as Map).cast<String, String>()),
    );
  }
}

