// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config.dart';

/// {@template pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
/// The set of arguments for PreventionInspectTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_inspect_template_prevention_inspect_template_args_doc}
class PreventionInspectTemplateArgs {
  /// Enables the use of [limited-availability built-in infoTypes](https://docs.cloud.google.com/sensitive-data-protection/docs/infotypes-reference#limited-availability-infotypes)
  /// in inspect_config. These infoTypes are supported only in specific regions and can cause scanning errors if used elsewhere.
  final pulumi.Input<bool>? allowLimitedAvailabilityInfoTypes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [allowLimitedAvailabilityInfoTypes] Enables the use of [limited-availability built-in infoTypes](https://docs.cloud.google.com/sensitive-data-protection/docs/infotypes-reference#limited-availability-infotypes)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the inspect template.
  /// [displayName] User set display name of the inspect template.
  /// [inspectConfig] The core content of the template.
  /// [parent] The parent of the inspect template in any of the following formats:
  /// [templateId] The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  const PreventionInspectTemplateArgs({
    this.allowLimitedAvailabilityInfoTypes,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.inspectConfig,
    required this.parent,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLimitedAvailabilityInfoTypes': ?allowLimitedAvailabilityInfoTypes,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'inspectConfig': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfig, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'parent': parent,
      'templateId': ?templateId,
    };
  }

  factory PreventionInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateArgs(
      allowLimitedAvailabilityInfoTypes: (() { final guardedValue = map['allowLimitedAvailabilityInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inspectConfig: (() { final guardedValue = map['inspectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
