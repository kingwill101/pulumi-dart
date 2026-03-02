// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_file_response.dart';

/// Files that make up the template contents of a template type.
class TemplateContentsResponse {
  /// Import files referenced by the main template.
  final pulumi.Input<List<ImportFileResponse>> imports;
  /// Which interpreter (python or jinja) should be used during expansion.
  final pulumi.Input<String> interpreter;
  /// The filename of the mainTemplate
  final pulumi.Input<String> mainTemplate;
  /// The contents of the template schema.
  final pulumi.Input<String> schema;
  /// The contents of the main template file.
  final pulumi.Input<String> template;

  /// Creates a new [TemplateContentsResponse].
  /// [imports] Import files referenced by the main template.
  /// [interpreter] Which interpreter (python or jinja) should be used during expansion.
  /// [mainTemplate] The filename of the mainTemplate
  /// [schema] The contents of the template schema.
  /// [template] The contents of the main template file.
  TemplateContentsResponse({
    required this.imports,
    required this.interpreter,
    required this.mainTemplate,
    required this.schema,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imports': pulumi.Input.mapInputValue<List<ImportFileResponse>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interpreter': interpreter,
      'mainTemplate': mainTemplate,
      'schema': schema,
      'template': template,
    };
  }

  factory TemplateContentsResponse.fromMap(Map<String, dynamic> map) {
    return TemplateContentsResponse(
      imports: (pulumi.Input.decodeList<ImportFileResponse>(map['imports'], (value) => ImportFileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interpreter: (map['interpreter'] as String).input(),
      mainTemplate: (map['mainTemplate'] as String).input(),
      schema: (map['schema'] as String).input(),
      template: (map['template'] as String).input(),
    );
  }
}

