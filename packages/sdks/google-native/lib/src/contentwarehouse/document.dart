import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_args.dart';
import 'google_cloud_documentai_v1_document_response.dart';

/// Creates a document.
class Document extends pulumi.CustomResource {
  /// Document AI format to save the structured content, including OCR.
  late final pulumi.Output<GoogleCloudDocumentaiV1DocumentResponse> cloudAiDocument;
  /// Indicates the category (image, audio, video etc.) of the original content.
  late final pulumi.Output<String> contentCategory;
  /// The time when the document is created.
  late final pulumi.Output<String> createTime;
  /// The user who creates the document.
  late final pulumi.Output<String> creator;
  /// Display name of the document given by the user. This name will be displayed in the UI. Customer can populate this field with the name of the document. This differs from the 'title' field as 'title' is optional and stores the top heading in the document.
  late final pulumi.Output<String> displayName;
  /// Uri to display the document, for example, in the UI.
  late final pulumi.Output<String> displayUri;
  /// If linked to a Collection with RetentionPolicy, the date when the document becomes mutable.
  late final pulumi.Output<String> dispositionTime;
  /// The Document schema name. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  late final pulumi.Output<String> documentSchemaName;
  /// Raw document content.
  late final pulumi.Output<String> inlineRawDocument;
  /// Indicates if the document has a legal hold on it.
  late final pulumi.Output<bool> legalHold;
  late final pulumi.Output<String> location;
  /// The resource name of the document. Format: projects/{project_number}/locations/{location}/documents/{document_id}. The name is ignored when creating a document.
  late final pulumi.Output<String> name;
  /// Other document format, such as PPTX, XLXS
  late final pulumi.Output<String> plainText;
  late final pulumi.Output<String> project;
  /// List of values that are user supplied metadata.
  late final pulumi.Output<List<Map<String, dynamic>>> properties;
  /// This is used when DocAI was not used to load the document and parsing/ extracting is needed for the inline_raw_document. For example, if inline_raw_document is the byte representation of a PDF file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  late final pulumi.Output<String> rawDocumentFileType;
  /// Raw document file in Cloud Storage path.
  late final pulumi.Output<String> rawDocumentPath;
  /// The reference ID set by customers. Must be unique per project and location.
  late final pulumi.Output<String> referenceId;
  /// If true, text extraction will not be performed.
  late final pulumi.Output<bool> textExtractionDisabled;
  /// If true, text extraction will be performed.
  late final pulumi.Output<bool> textExtractionEnabled;
  /// Title that describes the document. This can be the top heading or text that describes the document.
  late final pulumi.Output<String> title;
  /// The time when the document is last updated.
  late final pulumi.Output<String> updateTime;
  /// The user who lastly updates the document.
  late final pulumi.Output<String> updater;

  /// Creates a new [Document].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Document]. {@macro pulumi_contentwarehouse_v1_document_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Document(
    String name, {
    DocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:Document',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudAiDocument = registerOutput<GoogleCloudDocumentaiV1DocumentResponse>('cloudAiDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDocumentaiV1DocumentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentCategory = registerOutput<String>('contentCategory');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    displayName = registerOutput<String>('displayName');
    displayUri = registerOutput<String>('displayUri');
    dispositionTime = registerOutput<String>('dispositionTime');
    documentSchemaName = registerOutput<String>('documentSchemaName');
    inlineRawDocument = registerOutput<String>('inlineRawDocument');
    legalHold = registerOutput<bool>('legalHold');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    plainText = registerOutput<String>('plainText');
    project = registerOutput<String>('project');
    properties = registerOutput<List<Map<String, dynamic>>>('properties');
    rawDocumentFileType = registerOutput<String>('rawDocumentFileType');
    rawDocumentPath = registerOutput<String>('rawDocumentPath');
    referenceId = registerOutput<String>('referenceId');
    textExtractionDisabled = registerOutput<bool>('textExtractionDisabled');
    textExtractionEnabled = registerOutput<bool>('textExtractionEnabled');
    title = registerOutput<String>('title');
    updateTime = registerOutput<String>('updateTime');
    updater = registerOutput<String>('updater');
  }
}
