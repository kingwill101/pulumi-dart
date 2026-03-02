// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_file.dart';
import 'template_contents_interpreter.dart';

/// Files that make up the template contents of a template type.
class TemplateContents {
  /// Import files referenced by the main template.
  final pulumi.Input<List<ImportFile>>? imports;
  /// Which interpreter (python or jinja) should be used during expansion.
  final pulumi.Input<TemplateContentsInterpreter>? interpreter;
  /// The filename of the mainTemplate
  final pulumi.Input<String>? mainTemplate;
  /// The contents of the template schema.
  final pulumi.Input<String>? schema;
  /// The contents of the main template file.
  final pulumi.Input<String>? template;

  /// Creates a new [TemplateContents].
  /// [imports] Import files referenced by the main template.
  /// [interpreter] Which interpreter (python or jinja) should be used during expansion.
  /// [mainTemplate] The filename of the mainTemplate
  /// [schema] The contents of the template schema.
  /// [template] The contents of the main template file.
  TemplateContents({
    this.imports,
    this.interpreter,
    this.mainTemplate,
    this.schema,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imports': ?pulumi.Input.mapOptionalInputValue<List<ImportFile>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interpreter': ?pulumi.Input.mapOptionalInputValue<TemplateContentsInterpreter, String>(interpreter, (value) => value.value),
      'mainTemplate': ?mainTemplate,
      'schema': ?schema,
      'template': ?template,
    };
  }

  factory TemplateContents.fromMap(Map<String, dynamic> map) {
    return TemplateContents(
      imports: map['imports'] == null ? null : (pulumi.Input.decodeList<ImportFile>(map['imports'], (value) => ImportFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interpreter: map['interpreter'] == null ? null : (TemplateContentsInterpreter.fromValue(map['interpreter'] as String)).input(),
      mainTemplate: map['mainTemplate'] == null ? null : (map['mainTemplate'] as String).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
      template: map['template'] == null ? null : (map['template'] as String).input(),
    );
  }
}

