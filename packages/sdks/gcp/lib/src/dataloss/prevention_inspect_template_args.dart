// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config.dart';

/// {@template pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
/// The set of arguments for PreventionInspectTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
class PreventionInspectTemplateArgs {
  /// A description of the inspect template.
  final pulumi.Input<String>? description;

  /// User set display name of the inspect template.
  final pulumi.Input<String>? displayName;

  /// The core content of the template.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfig>? inspectConfig;

  /// The parent of the inspect template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? templateId;

  /// Creates a new [PreventionInspectTemplateArgs].
  /// [description] A description of the inspect template.
  /// [displayName] User set display name of the inspect template.
  /// [inspectConfig] The core content of the template.
  /// [parent] The parent of the inspect template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  PreventionInspectTemplateArgs({
    this.description,
    this.displayName,
    this.inspectConfig,
    required this.parent,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'inspectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionInspectTemplateInspectConfig,
            Map<String, dynamic>
          >(inspectConfig, (value) => value.toMap()),
      'parent': parent,
      'templateId': ?templateId,
    };
  }

  factory PreventionInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inspectConfig: (() {
        final guardedValue = map['inspectConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionInspectTemplateInspectConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
