// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_ai_logic_prompt_template_lock_ai_logic_prompt_template_lock_args_doc}
/// The set of arguments for AiLogicPromptTemplateLock.
/// {@endtemplate}
/// {@macro pulumi_firebase_ai_logic_prompt_template_lock_ai_logic_prompt_template_lock_args_doc}
class AiLogicPromptTemplateLockArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The location of the prompt template.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// For the `global` location only. If true, the modifyLock operation will
  /// apply to the global region only. Otherwise, the operation will also
  /// propagate to all applicable regions.
  final pulumi.Input<bool>? regionalPropagationDisabled;
  /// The ID of the prompt template.
  final pulumi.Input<String> templateId;

  /// Creates a new [AiLogicPromptTemplateLockArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the prompt template.
  /// [project] The ID of the project in which the resource belongs.
  /// [regionalPropagationDisabled] For the `global` location only. If true, the modifyLock operation will
  /// [templateId] The ID of the prompt template.
  const AiLogicPromptTemplateLockArgs({
    this.deletionPolicy,
    required this.location,
    this.project,
    this.regionalPropagationDisabled,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'regionalPropagationDisabled': ?regionalPropagationDisabled,
      'templateId': templateId,
    };
  }

  factory AiLogicPromptTemplateLockArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateLockArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalPropagationDisabled: (() { final guardedValue = map['regionalPropagationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
    );
  }
}
