// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_action.dart';
import 'guardrail_code_callback.dart';
import 'guardrail_content_filter.dart';
import 'guardrail_llm_policy.dart';
import 'guardrail_llm_prompt_security.dart';
import 'guardrail_model_safety.dart';

/// {@template pulumi_ces_guardrail_guardrail_args_doc}
/// The set of arguments for Guardrail.
/// {@endtemplate}
/// {@macro pulumi_ces_guardrail_guardrail_args_doc}
class GuardrailArgs {
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  final pulumi.Input<GuardrailAction>? action;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;
  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallback>? codeCallback;
  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  final pulumi.Input<GuardrailContentFilter>? contentFilter;
  /// Description of the guardrail.
  final pulumi.Input<String>? description;
  /// Display name of the guardrail.
  final pulumi.Input<String> displayName;
  /// Whether the guardrail is enabled.
  final pulumi.Input<bool>? enabled;
  /// The ID to use for the guardrail, which will become the final component of
  /// the guardrail's resource name. If not provided, a unique ID will be
  /// automatically assigned for the guardrail.
  final pulumi.Input<String> guardrailId;
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPolicy>? llmPolicy;
  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPromptSecurity>? llmPromptSecurity;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  final pulumi.Input<GuardrailModelSafety>? modelSafety;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GuardrailArgs].
  /// [action] Action that is taken when a certain precondition is met.
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [codeCallback] Guardrail that blocks the conversation based on the code callbacks
  /// [contentFilter] Guardrail that bans certain content from being used in the conversation.
  /// [description] Description of the guardrail.
  /// [displayName] Display name of the guardrail.
  /// [enabled] Whether the guardrail is enabled.
  /// [guardrailId] The ID to use for the guardrail, which will become the final component of
  /// [llmPolicy] Guardrail that blocks the conversation if the LLM response is considered
  /// [llmPromptSecurity] Guardrail that blocks the conversation if the input is considered unsafe
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [modelSafety] Model safety settings overrides. When this is set, it will override the
  /// [project] The ID of the project in which the resource belongs.
  GuardrailArgs({
    this.action,
    required this.app,
    this.codeCallback,
    this.contentFilter,
    this.description,
    required this.displayName,
    this.enabled,
    required this.guardrailId,
    this.llmPolicy,
    this.llmPromptSecurity,
    required this.location,
    this.modelSafety,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<GuardrailAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'app': app,
      'codeCallback': ?pulumi.Input.mapOptionalInputValue<GuardrailCodeCallback, Map<String, dynamic>>(codeCallback, (value) => value.toMap()),
      'contentFilter': ?pulumi.Input.mapOptionalInputValue<GuardrailContentFilter, Map<String, dynamic>>(contentFilter, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'enabled': ?enabled,
      'guardrailId': guardrailId,
      'llmPolicy': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPolicy, Map<String, dynamic>>(llmPolicy, (value) => value.toMap()),
      'llmPromptSecurity': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPromptSecurity, Map<String, dynamic>>(llmPromptSecurity, (value) => value.toMap()),
      'location': location,
      'modelSafety': ?pulumi.Input.mapOptionalInputValue<GuardrailModelSafety, Map<String, dynamic>>(modelSafety, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GuardrailArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailArgs(
      action: map['action'] == null ? null : (GuardrailAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      app: (map['app'] as String).input(),
      codeCallback: map['codeCallback'] == null ? null : (GuardrailCodeCallback.fromMap((map['codeCallback']! as Map).cast<String, dynamic>())).input(),
      contentFilter: map['contentFilter'] == null ? null : (GuardrailContentFilter.fromMap((map['contentFilter']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      guardrailId: (map['guardrailId'] as String).input(),
      llmPolicy: map['llmPolicy'] == null ? null : (GuardrailLlmPolicy.fromMap((map['llmPolicy']! as Map).cast<String, dynamic>())).input(),
      llmPromptSecurity: map['llmPromptSecurity'] == null ? null : (GuardrailLlmPromptSecurity.fromMap((map['llmPromptSecurity']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      modelSafety: map['modelSafety'] == null ? null : (GuardrailModelSafety.fromMap((map['modelSafety']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

