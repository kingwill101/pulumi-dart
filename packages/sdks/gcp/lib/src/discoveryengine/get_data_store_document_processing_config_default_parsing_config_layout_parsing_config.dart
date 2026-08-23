// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig {
  /// If true, the processed document will be made available for the GetProcessedDocument API.
  final pulumi.Input<bool> enableGetProcessedDocument;
  /// If true, the LLM based annotation is added to the image during parsing.
  final pulumi.Input<bool> enableImageAnnotation;
  /// If true, the pdf layout will be refined using an LLM.
  final pulumi.Input<bool> enableLlmLayoutParsing;
  /// If true, the LLM based annotation is added to the table during parsing.
  final pulumi.Input<bool> enableTableAnnotation;
  /// List of HTML classes to exclude from the parsed content.
  final pulumi.Input<List<String>> excludeHtmlClasses;
  /// List of HTML elements to exclude from the parsed content.
  final pulumi.Input<List<String>> excludeHtmlElements;
  /// List of HTML ids to exclude from the parsed content.
  final pulumi.Input<List<String>> excludeHtmlIds;
  /// Contains the required structure types to extract from the document. Supported values: 'shareholder-structure'.
  final pulumi.Input<List<String>> structuredContentTypes;

  /// Creates a new [GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig].
  /// [enableGetProcessedDocument] If true, the processed document will be made available for the GetProcessedDocument API.
  /// [enableImageAnnotation] If true, the LLM based annotation is added to the image during parsing.
  /// [enableLlmLayoutParsing] If true, the pdf layout will be refined using an LLM.
  /// [enableTableAnnotation] If true, the LLM based annotation is added to the table during parsing.
  /// [excludeHtmlClasses] List of HTML classes to exclude from the parsed content.
  /// [excludeHtmlElements] List of HTML elements to exclude from the parsed content.
  /// [excludeHtmlIds] List of HTML ids to exclude from the parsed content.
  /// [structuredContentTypes] Contains the required structure types to extract from the document. Supported values: 'shareholder-structure'.
  const GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig({
    required this.enableGetProcessedDocument,
    required this.enableImageAnnotation,
    required this.enableLlmLayoutParsing,
    required this.enableTableAnnotation,
    required this.excludeHtmlClasses,
    required this.excludeHtmlElements,
    required this.excludeHtmlIds,
    required this.structuredContentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableGetProcessedDocument': enableGetProcessedDocument,
      'enableImageAnnotation': enableImageAnnotation,
      'enableLlmLayoutParsing': enableLlmLayoutParsing,
      'enableTableAnnotation': enableTableAnnotation,
      'excludeHtmlClasses': excludeHtmlClasses,
      'excludeHtmlElements': excludeHtmlElements,
      'excludeHtmlIds': excludeHtmlIds,
      'structuredContentTypes': structuredContentTypes,
    };
  }

  factory GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig(
      enableGetProcessedDocument: pulumi.Input.fromValue(map['enableGetProcessedDocument'] as bool),
      enableImageAnnotation: pulumi.Input.fromValue(map['enableImageAnnotation'] as bool),
      enableLlmLayoutParsing: pulumi.Input.fromValue(map['enableLlmLayoutParsing'] as bool),
      enableTableAnnotation: pulumi.Input.fromValue(map['enableTableAnnotation'] as bool),
      excludeHtmlClasses: pulumi.Input.fromValue((map['excludeHtmlClasses'] as List).cast<String>()),
      excludeHtmlElements: pulumi.Input.fromValue((map['excludeHtmlElements'] as List).cast<String>()),
      excludeHtmlIds: pulumi.Input.fromValue((map['excludeHtmlIds'] as List).cast<String>()),
      structuredContentTypes: pulumi.Input.fromValue((map['structuredContentTypes'] as List).cast<String>()),
    );
  }
}
