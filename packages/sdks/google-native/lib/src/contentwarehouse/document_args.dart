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
  final pulumi.Input<GoogleCloudContentwarehouseV1CloudAIDocumentOption>?
  cloudAiDocumentOption;

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
  final pulumi.Input<GoogleCloudContentwarehouseV1RequestMetadata>?
  requestMetadata;

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
    this.cloudAiDocument,
    this.cloudAiDocumentOption,
    this.contentCategory,
    this.createMask,
    this.creator,
    required this.displayName,
    this.displayUri,
    this.documentSchemaName,
    this.inlineRawDocument,
    this.location,
    this.name,
    this.plainText,
    this.policy,
    this.project,
    this.properties,
    this.rawDocumentFileType,
    this.rawDocumentPath,
    this.referenceId,
    this.requestMetadata,
    this.textExtractionDisabled,
    this.textExtractionEnabled,
    this.title,
    this.updater,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAiDocument':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDocumentaiV1Document,
            Map<String, dynamic>
          >(cloudAiDocument, (value) => value.toMap()),
      'cloudAiDocumentOption':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContentwarehouseV1CloudAIDocumentOption,
            Map<String, dynamic>
          >(cloudAiDocumentOption, (value) => value.toMap()),
      'contentCategory':
          ?pulumi.Input.mapOptionalInputValue<DocumentContentCategory, String>(
            contentCategory,
            (value) => value.wireValue,
          ),
      'createMask': ?createMask,
      'creator': ?creator,
      'displayName': displayName,
      'displayUri': ?displayUri,
      'documentSchemaName': ?documentSchemaName,
      'inlineRawDocument': ?inlineRawDocument,
      'location': ?location,
      'name': ?name,
      'plainText': ?plainText,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleIamV1Policy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'project': ?project,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudContentwarehouseV1Property>,
            List<Map<String, dynamic>>
          >(
            properties,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContentwarehouseV1Property,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'rawDocumentFileType':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentRawDocumentFileType,
            String
          >(rawDocumentFileType, (value) => value.wireValue),
      'rawDocumentPath': ?rawDocumentPath,
      'referenceId': ?referenceId,
      'requestMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContentwarehouseV1RequestMetadata,
            Map<String, dynamic>
          >(requestMetadata, (value) => value.toMap()),
      'textExtractionDisabled': ?textExtractionDisabled,
      'textExtractionEnabled': ?textExtractionEnabled,
      'title': ?title,
      'updater': ?updater,
    };
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      cloudAiDocument: (() {
        final guardedValue = map['cloudAiDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDocumentaiV1Document.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloudAiDocumentOption: (() {
        final guardedValue = map['cloudAiDocumentOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contentCategory: (() {
        final guardedValue = map['contentCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DocumentContentCategory.fromValue(guardedValue as String),
        );
      })(),
      createMask: (() {
        final guardedValue = map['createMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      creator: (() {
        final guardedValue = map['creator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      displayUri: (() {
        final guardedValue = map['displayUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentSchemaName: (() {
        final guardedValue = map['documentSchemaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inlineRawDocument: (() {
        final guardedValue = map['inlineRawDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plainText: (() {
        final guardedValue = map['plainText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleIamV1Policy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudContentwarehouseV1Property>(
            guardedValue,
            (value) => GoogleCloudContentwarehouseV1Property.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      rawDocumentFileType: (() {
        final guardedValue = map['rawDocumentFileType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DocumentRawDocumentFileType.fromValue(guardedValue as String),
        );
      })(),
      rawDocumentPath: (() {
        final guardedValue = map['rawDocumentPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      referenceId: (() {
        final guardedValue = map['referenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestMetadata: (() {
        final guardedValue = map['requestMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContentwarehouseV1RequestMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      textExtractionDisabled: (() {
        final guardedValue = map['textExtractionDisabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      textExtractionEnabled: (() {
        final guardedValue = map['textExtractionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updater: (() {
        final guardedValue = map['updater'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
