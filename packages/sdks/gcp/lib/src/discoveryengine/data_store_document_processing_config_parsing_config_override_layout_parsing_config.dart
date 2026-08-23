// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig {
  /// If true, the processed document will be made available for the GetProcessedDocument API.
  final pulumi.Input<bool>? enableGetProcessedDocument;
  /// If true, the LLM based annotation is added to the image during parsing.
  final pulumi.Input<bool>? enableImageAnnotation;
  /// If true, the pdf layout will be refined using an LLM.
  final pulumi.Input<bool>? enableLlmLayoutParsing;
  /// If true, the LLM based annotation is added to the table during parsing.
  final pulumi.Input<bool>? enableTableAnnotation;
  /// List of HTML classes to exclude from the parsed content.
  final pulumi.Input<List<String>>? excludeHtmlClasses;
  /// List of HTML elements to exclude from the parsed content.
  final pulumi.Input<List<String>>? excludeHtmlElements;
  /// List of HTML ids to exclude from the parsed content.
  final pulumi.Input<List<String>>? excludeHtmlIds;
  /// Contains the required structure types to extract from the document. Supported values: `shareholder-structure`.
  final pulumi.Input<List<String>>? structuredContentTypes;

  /// Creates a new [DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig].
  /// [enableGetProcessedDocument] If true, the processed document will be made available for the GetProcessedDocument API.
  /// [enableImageAnnotation] If true, the LLM based annotation is added to the image during parsing.
  /// [enableLlmLayoutParsing] If true, the pdf layout will be refined using an LLM.
  /// [enableTableAnnotation] If true, the LLM based annotation is added to the table during parsing.
  /// [excludeHtmlClasses] List of HTML classes to exclude from the parsed content.
  /// [excludeHtmlElements] List of HTML elements to exclude from the parsed content.
  /// [excludeHtmlIds] List of HTML ids to exclude from the parsed content.
  /// [structuredContentTypes] Contains the required structure types to extract from the document. Supported values: `shareholder-structure`.
  const DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig({
    this.enableGetProcessedDocument,
    this.enableImageAnnotation,
    this.enableLlmLayoutParsing,
    this.enableTableAnnotation,
    this.excludeHtmlClasses,
    this.excludeHtmlElements,
    this.excludeHtmlIds,
    this.structuredContentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableGetProcessedDocument': ?enableGetProcessedDocument,
      'enableImageAnnotation': ?enableImageAnnotation,
      'enableLlmLayoutParsing': ?enableLlmLayoutParsing,
      'enableTableAnnotation': ?enableTableAnnotation,
      'excludeHtmlClasses': ?excludeHtmlClasses,
      'excludeHtmlElements': ?excludeHtmlElements,
      'excludeHtmlIds': ?excludeHtmlIds,
      'structuredContentTypes': ?structuredContentTypes,
    };
  }

  factory DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig(
      enableGetProcessedDocument: (() { final guardedValue = map['enableGetProcessedDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableImageAnnotation: (() { final guardedValue = map['enableImageAnnotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLlmLayoutParsing: (() { final guardedValue = map['enableLlmLayoutParsing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTableAnnotation: (() { final guardedValue = map['enableTableAnnotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeHtmlClasses: (() { final guardedValue = map['excludeHtmlClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeHtmlElements: (() { final guardedValue = map['excludeHtmlElements']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludeHtmlIds: (() { final guardedValue = map['excludeHtmlIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      structuredContentTypes: (() { final guardedValue = map['structuredContentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
