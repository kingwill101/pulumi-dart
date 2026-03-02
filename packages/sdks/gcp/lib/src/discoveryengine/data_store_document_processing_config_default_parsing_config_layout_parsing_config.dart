// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig {
  /// If true, the LLM based annotation is added to the image during parsing.
  final pulumi.Input<bool>? enableImageAnnotation;
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

  /// Creates a new [DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig].
  /// [enableImageAnnotation] If true, the LLM based annotation is added to the image during parsing.
  /// [enableTableAnnotation] If true, the LLM based annotation is added to the table during parsing.
  /// [excludeHtmlClasses] List of HTML classes to exclude from the parsed content.
  /// [excludeHtmlElements] List of HTML elements to exclude from the parsed content.
  /// [excludeHtmlIds] List of HTML ids to exclude from the parsed content.
  /// [structuredContentTypes] Contains the required structure types to extract from the document. Supported values: `shareholder-structure`.
  DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig({
    this.enableImageAnnotation,
    this.enableTableAnnotation,
    this.excludeHtmlClasses,
    this.excludeHtmlElements,
    this.excludeHtmlIds,
    this.structuredContentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableImageAnnotation': ?enableImageAnnotation,
      'enableTableAnnotation': ?enableTableAnnotation,
      'excludeHtmlClasses': ?excludeHtmlClasses,
      'excludeHtmlElements': ?excludeHtmlElements,
      'excludeHtmlIds': ?excludeHtmlIds,
      'structuredContentTypes': ?structuredContentTypes,
    };
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig(
      enableImageAnnotation: map['enableImageAnnotation'] == null ? null : (map['enableImageAnnotation']! as bool).input(),
      enableTableAnnotation: map['enableTableAnnotation'] == null ? null : (map['enableTableAnnotation']! as bool).input(),
      excludeHtmlClasses: map['excludeHtmlClasses'] == null ? null : ((map['excludeHtmlClasses']! as List).cast<String>()).input(),
      excludeHtmlElements: map['excludeHtmlElements'] == null ? null : ((map['excludeHtmlElements']! as List).cast<String>()).input(),
      excludeHtmlIds: map['excludeHtmlIds'] == null ? null : ((map['excludeHtmlIds']! as List).cast<String>()).input(),
      structuredContentTypes: map['structuredContentTypes'] == null ? null : ((map['structuredContentTypes']! as List).cast<String>()).input(),
    );
  }
}

