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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the template.
  final pulumi.Input<String?>? description;
  /// User set display name of the template.
  final pulumi.Input<String?>? displayName;
  /// The parent of the template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String?>? templateId;

  /// Creates a new [PreventionDeidentifyTemplateArgs].
  /// [deidentifyConfig] Configuration of the deidentify template
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the template.
  /// [displayName] User set display name of the template.
  /// [parent] The parent of the template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  const PreventionDeidentifyTemplateArgs({
    required this.deidentifyConfig,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.parent,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyConfig': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfig, Map<String, dynamic>>(deidentifyConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'parent': parent,
      'templateId': ?templateId,
    };
  }

  factory PreventionDeidentifyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateArgs(
      deidentifyConfig: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfig.fromMap((map['deidentifyConfig']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
