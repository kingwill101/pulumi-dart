// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_response.dart';
import 'google_cloud_documentai_v1_document_response.dart';

/// Result data returned by getDocument.
class GetDocumentResult {
  /// Document AI format to save the structured content, including OCR.
  final GoogleCloudDocumentaiV1DocumentResponse? cloudAiDocument;
  /// Indicates the category (image, audio, video etc.) of the original content.
  final String? contentCategory;
  /// The time when the document is created.
  final String? createTime;
  /// The user who creates the document.
  final String? creator;
  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  final String? displayName;
  /// Uri to display the document, for example, in the UI.
  final String? displayUri;
  /// If linked to a Collection with RetentionPolicy, the date when the document becomes mutable.
  final String? dispositionTime;
  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  final String? documentSchemaName;
  /// Raw document content.
  final String? inlineRawDocument;
  /// Indicates if the document has a legal hold on it.
  final bool? legalHold;
  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  final String? name;
  /// Other document format, such as PPTX, XLXS
  final String? plainText;
  /// List of values that are user supplied metadata.
  final List<GoogleCloudContentwarehouseV1PropertyResponse>? properties;
  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  final String? rawDocumentFileType;
  /// Raw document file in Cloud Storage path.
  final String? rawDocumentPath;
  /// The reference ID set by customers. Must be unique per project and location.
  final String? referenceId;
  /// If true, text extraction will not be performed.
  final bool? textExtractionDisabled;
  /// If true, text extraction will be performed.
  final bool? textExtractionEnabled;
  /// Title that describes the document. This can be the top heading or text that describes the document.
  final String? title;
  /// The time when the document is last updated.
  final String? updateTime;
  /// The user who lastly updates the document.
  final String? updater;

  /// Creates a new [GetDocumentResult].
  /// [cloudAiDocument] Document AI format to save the structured content, including OCR.
  /// [contentCategory] Indicates the category (image, audio, video etc.) of the original content.
  /// [createTime] The time when the document is created.
  /// [creator] The user who creates the document.
  /// [displayName] Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  /// [displayUri] Uri to display the document, for example, in the UI.
  /// [dispositionTime] If linked to a Collection with RetentionPolicy, the date when the document becomes mutable.
  /// [documentSchemaName] The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  /// [inlineRawDocument] Raw document content.
  /// [legalHold] Indicates if the document has a legal hold on it.
  /// [name] The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  /// [plainText] Other document format, such as PPTX, XLXS
  /// [properties] List of values that are user supplied metadata.
  /// [rawDocumentFileType] This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  /// [rawDocumentPath] Raw document file in Cloud Storage path.
  /// [referenceId] The reference ID set by customers. Must be unique per project and location.
  /// [textExtractionDisabled] If true, text extraction will not be performed.
  /// [textExtractionEnabled] If true, text extraction will be performed.
  /// [title] Title that describes the document. This can be the top heading or text that describes the document.
  /// [updateTime] The time when the document is last updated.
  /// [updater] The user who lastly updates the document.
  const GetDocumentResult({
    this.cloudAiDocument,
    this.contentCategory,
    this.createTime,
    this.creator,
    this.displayName,
    this.displayUri,
    this.dispositionTime,
    this.documentSchemaName,
    this.inlineRawDocument,
    this.legalHold,
    this.name,
    this.plainText,
    this.properties,
    this.rawDocumentFileType,
    this.rawDocumentPath,
    this.referenceId,
    this.textExtractionDisabled,
    this.textExtractionEnabled,
    this.title,
    this.updateTime,
    this.updater,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAiDocument': ?cloudAiDocument?.toMap(),
      'contentCategory': ?contentCategory,
      'createTime': ?createTime,
      'creator': ?creator,
      'displayName': ?displayName,
      'displayUri': ?displayUri,
      'dispositionTime': ?dispositionTime,
      'documentSchemaName': ?documentSchemaName,
      'inlineRawDocument': ?inlineRawDocument,
      'legalHold': ?legalHold,
      'name': ?name,
      'plainText': ?plainText,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rawDocumentFileType': ?rawDocumentFileType,
      'rawDocumentPath': ?rawDocumentPath,
      'referenceId': ?referenceId,
      'textExtractionDisabled': ?textExtractionDisabled,
      'textExtractionEnabled': ?textExtractionEnabled,
      'title': ?title,
      'updateTime': ?updateTime,
      'updater': ?updater,
    };
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      cloudAiDocument: (() { final guardedValue = map['cloudAiDocument']; if (guardedValue == null) return null; return GoogleCloudDocumentaiV1DocumentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      contentCategory: (() { final guardedValue = map['contentCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayUri: (() { final guardedValue = map['displayUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dispositionTime: (() { final guardedValue = map['dispositionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentSchemaName: (() { final guardedValue = map['documentSchemaName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inlineRawDocument: (() { final guardedValue = map['inlineRawDocument']; if (guardedValue == null) return null; return guardedValue as String; })(),
      legalHold: (() { final guardedValue = map['legalHold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plainText: (() { final guardedValue = map['plainText']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1PropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      rawDocumentFileType: (() { final guardedValue = map['rawDocumentFileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rawDocumentPath: (() { final guardedValue = map['rawDocumentPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      textExtractionDisabled: (() { final guardedValue = map['textExtractionDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      textExtractionEnabled: (() { final guardedValue = map['textExtractionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updater: (() { final guardedValue = map['updater']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
