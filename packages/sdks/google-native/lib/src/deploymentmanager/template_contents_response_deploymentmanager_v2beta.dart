// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_file_response_deploymentmanager_v2beta.dart';

/// Files that make up the template contents of a template type.
class TemplateContentsResponseDeploymentmanagerV2beta {
  /// Import files referenced by the main template.
  final pulumi.Input<List<ImportFileResponseDeploymentmanagerV2beta>> imports;
  /// Which interpreter (python or jinja) should be used during expansion.
  final pulumi.Input<String> interpreter;
  /// The filename of the mainTemplate
  final pulumi.Input<String> mainTemplate;
  /// The contents of the template schema.
  final pulumi.Input<String> schema;
  /// The contents of the main template file.
  final pulumi.Input<String> template;

  /// Creates a new [TemplateContentsResponseDeploymentmanagerV2beta].
  /// [imports] Import files referenced by the main template.
  /// [interpreter] Which interpreter (python or jinja) should be used during expansion.
  /// [mainTemplate] The filename of the mainTemplate
  /// [schema] The contents of the template schema.
  /// [template] The contents of the main template file.
  TemplateContentsResponseDeploymentmanagerV2beta({
    required this.imports,
    required this.interpreter,
    required this.mainTemplate,
    required this.schema,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imports': pulumi.Input.mapInputValue<List<ImportFileResponseDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFileResponseDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interpreter': interpreter,
      'mainTemplate': mainTemplate,
      'schema': schema,
      'template': template,
    };
  }

  factory TemplateContentsResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return TemplateContentsResponseDeploymentmanagerV2beta(
      imports: (pulumi.Input.decodeList<ImportFileResponseDeploymentmanagerV2beta>(map['imports'], (value) => ImportFileResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interpreter: (map['interpreter'] as String).input(),
      mainTemplate: (map['mainTemplate'] as String).input(),
      schema: (map['schema'] as String).input(),
      template: (map['template'] as String).input(),
    );
  }
}

