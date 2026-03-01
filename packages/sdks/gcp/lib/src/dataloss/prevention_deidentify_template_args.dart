// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config.dart';

/// {@template pulumi_dataloss_prevention_deidentify_template_prevention_deidentify_template_args_doc}
/// The set of arguments for PreventionDeidentifyTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_deidentify_template_prevention_deidentify_template_args_doc}
class PreventionDeidentifyTemplateArgs {
  /// Configuration of the deidentify template
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfig> deidentifyConfig;
  /// A description of the template.
  final pulumi.Input<String>? description;
  /// User set display name of the template.
  final pulumi.Input<String>? displayName;
  /// The parent of the template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  /// Creates a new [PreventionDeidentifyTemplateArgs].
  /// [deidentifyConfig] Configuration of the deidentify template
  /// [description] A description of the template.
  /// [displayName] User set display name of the template.
  /// [parent] The parent of the template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  PreventionDeidentifyTemplateArgs({
    required pulumi.Output<PreventionDeidentifyTemplateDeidentifyConfig> deidentifyConfig,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> parent,
    pulumi.Output<String>? templateId,
  }) :
      deidentifyConfig = pulumi.Input.asInput<PreventionDeidentifyTemplateDeidentifyConfig>(deidentifyConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      parent = pulumi.Input.asInput<String>(parent),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyConfig': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfig, Map<String, dynamic>>(deidentifyConfig, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'parent': parent,
      'templateId': ?templateId,
    };
  }

  factory PreventionDeidentifyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateArgs(
      deidentifyConfig: pulumi.Output.create<PreventionDeidentifyTemplateDeidentifyConfig>(PreventionDeidentifyTemplateDeidentifyConfig.fromMap((map['deidentifyConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
    );
  }
}

