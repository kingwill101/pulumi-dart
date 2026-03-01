// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_content_category.dart';
import 'document_raw_document_file_type.dart';
import 'google_cloud_contentwarehouse_v1_cloud_aidocument_option.dart';
import 'google_cloud_contentwarehouse_v1_property.dart';
import 'google_cloud_contentwarehouse_v1_request_metadata.dart';
import 'google_cloud_documentai_v1_document.dart';
import 'google_iam_v1_policy.dart';

/// {@template pulumi_contentwarehouse_v1_document_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_document_args_doc}
class DocumentArgs {
  /// Document AI format to save the structured content, including OCR.
  final pulumi.Input<GoogleCloudDocumentaiV1Document>? cloudAiDocument;
  /// Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited support for mapping entities from Cloud AI Document to Warehouse Document. Please consult with product team before using this field and other available options.
  final pulumi.Input<GoogleCloudContentwarehouseV1CloudAIDocumentOption>? cloudAiDocumentOption;
  /// Indicates the category (image, audio, video etc.) of the original content.
  final pulumi.Input<DocumentContentCategory>? contentCategory;
  /// Field mask for creating Document fields. If mask path is empty, it means all fields are masked. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  final pulumi.Input<String>? createMask;
  /// The user who creates the document.
  final pulumi.Input<String>? creator;
  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  final pulumi.Input<String> displayName;
  /// Uri to display the document, for example, in the UI.
  final pulumi.Input<String>? displayUri;
  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  final pulumi.Input<String>? documentSchemaName;
  /// Raw document content.
  final pulumi.Input<String>? inlineRawDocument;
  final pulumi.Input<String>? location;
  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  final pulumi.Input<String>? name;
  /// Other document format, such as PPTX, XLXS
  final pulumi.Input<String>? plainText;
  /// Default document policy during creation. This refers to an Identity and Access (IAM) policy, which specifies access controls for the Document. Conditions defined in the policy will be ignored.
  final pulumi.Input<GoogleIamV1Policy>? policy;
  final pulumi.Input<String>? project;
  /// List of values that are user supplied metadata.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1Property>>? properties;
  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  final pulumi.Input<DocumentRawDocumentFileType>? rawDocumentFileType;
  /// Raw document file in Cloud Storage path.
  final pulumi.Input<String>? rawDocumentPath;
  /// The reference ID set by customers. Must be unique per project and location.
  final pulumi.Input<String>? referenceId;
  /// The meta information collected about the end user, used to enforce access control for the service.
  final pulumi.Input<GoogleCloudContentwarehouseV1RequestMetadata>? requestMetadata;
  /// If true, text extraction will not be performed.
  final pulumi.Input<bool>? textExtractionDisabled;
  /// If true, text extraction will be performed.
  final pulumi.Input<bool>? textExtractionEnabled;
  /// Title that describes the document. This can be the top heading or text that describes the document.
  final pulumi.Input<String>? title;
  /// The user who lastly updates the document.
  final pulumi.Input<String>? updater;

  /// Creates a new [DocumentArgs].
  /// [cloudAiDocument] Document AI format to save the structured content, including OCR.
  /// [cloudAiDocumentOption] Request Option for processing Cloud AI Document in Document Warehouse. This field offers limited support for mapping entities from Cloud AI Document to Warehouse Document. Please consult with product team before using this field and other available options.
  /// [contentCategory] Indicates the category (image, audio, video etc.) of the original content.
  /// [createMask] Field mask for creating Document fields. If mask path is empty, it means all fields are masked. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  /// [creator] The user who creates the document.
  /// [displayName] Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  /// [displayUri] Uri to display the document, for example, in the UI.
  /// [documentSchemaName] The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  /// [inlineRawDocument] Raw document content.
  /// [location] Optional.
  /// [name] The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  /// [plainText] Other document format, such as PPTX, XLXS
  /// [policy] Default document policy during creation. This refers to an Identity and Access (IAM) policy, which specifies access controls for the Document. Conditions defined in the policy will be ignored.
  /// [project] Optional.
  /// [properties] List of values that are user supplied metadata.
  /// [rawDocumentFileType] This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  /// [rawDocumentPath] Raw document file in Cloud Storage path.
  /// [referenceId] The reference ID set by customers. Must be unique per project and location.
  /// [requestMetadata] The meta information collected about the end user, used to enforce access control for the service.
  /// [textExtractionDisabled] If true, text extraction will not be performed.
  /// [textExtractionEnabled] If true, text extraction will be performed.
  /// [title] Title that describes the document. This can be the top heading or text that describes the document.
  /// [updater] The user who lastly updates the document.
  DocumentArgs({
    pulumi.Output<GoogleCloudDocumentaiV1Document>? cloudAiDocument,
    pulumi.Output<GoogleCloudContentwarehouseV1CloudAIDocumentOption>? cloudAiDocumentOption,
    pulumi.Output<DocumentContentCategory>? contentCategory,
    pulumi.Output<String>? createMask,
    pulumi.Output<String>? creator,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? displayUri,
    pulumi.Output<String>? documentSchemaName,
    pulumi.Output<String>? inlineRawDocument,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? plainText,
    pulumi.Output<GoogleIamV1Policy>? policy,
    pulumi.Output<String>? project,
    pulumi.Output<List<GoogleCloudContentwarehouseV1Property>>? properties,
    pulumi.Output<DocumentRawDocumentFileType>? rawDocumentFileType,
    pulumi.Output<String>? rawDocumentPath,
    pulumi.Output<String>? referenceId,
    pulumi.Output<GoogleCloudContentwarehouseV1RequestMetadata>? requestMetadata,
    pulumi.Output<bool>? textExtractionDisabled,
    pulumi.Output<bool>? textExtractionEnabled,
    pulumi.Output<String>? title,
    pulumi.Output<String>? updater,
  }) :
      cloudAiDocument = pulumi.Input.asOptionalInput<GoogleCloudDocumentaiV1Document>(cloudAiDocument),
      cloudAiDocumentOption = pulumi.Input.asOptionalInput<GoogleCloudContentwarehouseV1CloudAIDocumentOption>(cloudAiDocumentOption),
      contentCategory = pulumi.Input.asOptionalInput<DocumentContentCategory>(contentCategory),
      createMask = pulumi.Input.asOptionalInput<String>(createMask),
      creator = pulumi.Input.asOptionalInput<String>(creator),
      displayName = pulumi.Input.asInput<String>(displayName),
      displayUri = pulumi.Input.asOptionalInput<String>(displayUri),
      documentSchemaName = pulumi.Input.asOptionalInput<String>(documentSchemaName),
      inlineRawDocument = pulumi.Input.asOptionalInput<String>(inlineRawDocument),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      plainText = pulumi.Input.asOptionalInput<String>(plainText),
      policy = pulumi.Input.asOptionalInput<GoogleIamV1Policy>(policy),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<List<GoogleCloudContentwarehouseV1Property>>(properties),
      rawDocumentFileType = pulumi.Input.asOptionalInput<DocumentRawDocumentFileType>(rawDocumentFileType),
      rawDocumentPath = pulumi.Input.asOptionalInput<String>(rawDocumentPath),
      referenceId = pulumi.Input.asOptionalInput<String>(referenceId),
      requestMetadata = pulumi.Input.asOptionalInput<GoogleCloudContentwarehouseV1RequestMetadata>(requestMetadata),
      textExtractionDisabled = pulumi.Input.asOptionalInput<bool>(textExtractionDisabled),
      textExtractionEnabled = pulumi.Input.asOptionalInput<bool>(textExtractionEnabled),
      title = pulumi.Input.asOptionalInput<String>(title),
      updater = pulumi.Input.asOptionalInput<String>(updater);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAiDocument': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1Document, Map<String, dynamic>>(cloudAiDocument, (value) => value.toMap()),
      'cloudAiDocumentOption': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1CloudAIDocumentOption, Map<String, dynamic>>(cloudAiDocumentOption, (value) => value.toMap()),
      'contentCategory': ?pulumi.Input.mapOptionalInputValue<DocumentContentCategory, String>(contentCategory, (value) => value.value),
      'createMask': ?createMask,
      'creator': ?creator,
      'displayName': displayName,
      'displayUri': ?displayUri,
      'documentSchemaName': ?documentSchemaName,
      'inlineRawDocument': ?inlineRawDocument,
      'location': ?location,
      'name': ?name,
      'plainText': ?plainText,
      'policy': ?pulumi.Input.mapOptionalInputValue<GoogleIamV1Policy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1Property>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1Property, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rawDocumentFileType': ?pulumi.Input.mapOptionalInputValue<DocumentRawDocumentFileType, String>(rawDocumentFileType, (value) => value.value),
      'rawDocumentPath': ?rawDocumentPath,
      'referenceId': ?referenceId,
      'requestMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1RequestMetadata, Map<String, dynamic>>(requestMetadata, (value) => value.toMap()),
      'textExtractionDisabled': ?textExtractionDisabled,
      'textExtractionEnabled': ?textExtractionEnabled,
      'title': ?title,
      'updater': ?updater,
    };
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      cloudAiDocument: map['cloudAiDocument'] == null ? null : pulumi.Output.create<GoogleCloudDocumentaiV1Document>(GoogleCloudDocumentaiV1Document.fromMap((map['cloudAiDocument'] as Map).cast<String, dynamic>())),
      cloudAiDocumentOption: map['cloudAiDocumentOption'] == null ? null : pulumi.Output.create<GoogleCloudContentwarehouseV1CloudAIDocumentOption>(GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromMap((map['cloudAiDocumentOption'] as Map).cast<String, dynamic>())),
      contentCategory: map['contentCategory'] == null ? null : pulumi.Output.create<DocumentContentCategory>(DocumentContentCategory.fromValue(map['contentCategory'] as String)),
      createMask: map['createMask'] == null ? null : pulumi.Output.create<String>(map['createMask'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<String>(map['creator'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      displayUri: map['displayUri'] == null ? null : pulumi.Output.create<String>(map['displayUri'] as String),
      documentSchemaName: map['documentSchemaName'] == null ? null : pulumi.Output.create<String>(map['documentSchemaName'] as String),
      inlineRawDocument: map['inlineRawDocument'] == null ? null : pulumi.Output.create<String>(map['inlineRawDocument'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plainText: map['plainText'] == null ? null : pulumi.Output.create<String>(map['plainText'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<GoogleIamV1Policy>(GoogleIamV1Policy.fromMap((map['policy'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<List<GoogleCloudContentwarehouseV1Property>>(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1Property>(map['properties'], (value) => GoogleCloudContentwarehouseV1Property.fromMap((value as Map).cast<String, dynamic>()))),
      rawDocumentFileType: map['rawDocumentFileType'] == null ? null : pulumi.Output.create<DocumentRawDocumentFileType>(DocumentRawDocumentFileType.fromValue(map['rawDocumentFileType'] as String)),
      rawDocumentPath: map['rawDocumentPath'] == null ? null : pulumi.Output.create<String>(map['rawDocumentPath'] as String),
      referenceId: map['referenceId'] == null ? null : pulumi.Output.create<String>(map['referenceId'] as String),
      requestMetadata: map['requestMetadata'] == null ? null : pulumi.Output.create<GoogleCloudContentwarehouseV1RequestMetadata>(GoogleCloudContentwarehouseV1RequestMetadata.fromMap((map['requestMetadata'] as Map).cast<String, dynamic>())),
      textExtractionDisabled: map['textExtractionDisabled'] == null ? null : pulumi.Output.create<bool>(map['textExtractionDisabled'] as bool),
      textExtractionEnabled: map['textExtractionEnabled'] == null ? null : pulumi.Output.create<bool>(map['textExtractionEnabled'] as bool),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      updater: map['updater'] == null ? null : pulumi.Output.create<String>(map['updater'] as String),
    );
  }
}

