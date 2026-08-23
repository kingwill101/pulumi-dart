// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_ai_logic_prompt_template_ai_logic_prompt_template_args_doc}
/// The set of arguments for AiLogicPromptTemplate.
/// {@endtemplate}
/// {@macro pulumi_firebase_ai_logic_prompt_template_ai_logic_prompt_template_args_doc}
class AiLogicPromptTemplateArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the PromptTemplate.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// For the `global` location only. If true, the write operation (create,
  /// update, or delete) will apply to the global region only. Otherwise, the
  /// operation will also propagate to all applicable regions.
  final pulumi.Input<bool>? regionalPropagationDisabled;
  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  final pulumi.Input<String> templateId;
  /// The [Dotprompt](https://google.github.io/dotprompt/getting-started) raw template string.
  final pulumi.Input<String> templateString;

  /// Creates a new [AiLogicPromptTemplateArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the PromptTemplate.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [regionalPropagationDisabled] For the `global` location only. If true, the write operation (create,
  /// [templateId] The unique ID of the PromptTemplate, which is the final component of the
  /// [templateString] The [Dotprompt](https://google.github.io/dotprompt/getting-started) raw template string.
  const AiLogicPromptTemplateArgs({
    this.deletionPolicy,
    this.displayName,
    required this.location,
    this.project,
    this.regionalPropagationDisabled,
    required this.templateId,
    required this.templateString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'regionalPropagationDisabled': ?regionalPropagationDisabled,
      'templateId': templateId,
      'templateString': templateString,
    };
  }

  factory AiLogicPromptTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalPropagationDisabled: (() { final guardedValue = map['regionalPropagationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      templateString: pulumi.Input.fromValue(map['templateString'] as String),
    );
  }
}
