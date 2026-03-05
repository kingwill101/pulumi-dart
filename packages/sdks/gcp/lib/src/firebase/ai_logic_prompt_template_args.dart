// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_ai_logic_prompt_template_ai_logic_prompt_template_args_doc}
/// The set of arguments for AiLogicPromptTemplate.
/// {@endtemplate}
/// {@macro pulumi_firebase_ai_logic_prompt_template_ai_logic_prompt_template_args_doc}
class AiLogicPromptTemplateArgs {
  /// The display name of the PromptTemplate.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  final pulumi.Input<String> templateId;
  /// The DotPrompt raw template string.
  final pulumi.Input<String> templateString;

  /// Creates a new [AiLogicPromptTemplateArgs].
  /// [displayName] The display name of the PromptTemplate.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] The unique ID of the PromptTemplate, which is the final component of the
  /// [templateString] The DotPrompt raw template string.
  AiLogicPromptTemplateArgs({
    this.displayName,
    required this.location,
    this.project,
    required this.templateId,
    required this.templateString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'templateId': templateId,
      'templateString': templateString,
    };
  }

  factory AiLogicPromptTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      templateString: pulumi.Input.fromValue(map['templateString'] as String),
    );
  }
}

