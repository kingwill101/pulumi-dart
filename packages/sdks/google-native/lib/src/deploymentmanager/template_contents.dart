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
  const TemplateContents({
    this.imports,
    this.interpreter,
    this.mainTemplate,
    this.schema,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imports': ?pulumi.Input.mapOptionalInputValue<List<ImportFile>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interpreter': ?pulumi.Input.mapOptionalInputValue<TemplateContentsInterpreter, String>(interpreter, (value) => value.wireValue),
      'mainTemplate': ?mainTemplate,
      'schema': ?schema,
      'template': ?template,
    };
  }

  factory TemplateContents.fromMap(Map<String, dynamic> map) {
    return TemplateContents(
      imports: (() { final guardedValue = map['imports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportFile>(guardedValue, (value) => ImportFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      interpreter: (() { final guardedValue = map['interpreter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateContentsInterpreter.fromValue(guardedValue as String)); })(),
      mainTemplate: (() { final guardedValue = map['mainTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

