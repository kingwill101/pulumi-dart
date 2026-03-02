// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_action.dart';
import 'guardrail_code_callback.dart';
import 'guardrail_content_filter.dart';
import 'guardrail_llm_policy.dart';
import 'guardrail_llm_prompt_security.dart';
import 'guardrail_model_safety.dart';

/// Input properties used for looking up and filtering Guardrail resources.
class GuardrailState {
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  final pulumi.Input<GuardrailAction>? action;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? app;
  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  final pulumi.Input<GuardrailCodeCallback>? codeCallback;
  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  final pulumi.Input<GuardrailContentFilter>? contentFilter;
  /// Timestamp when the guardrail was created.
  final pulumi.Input<String>? createTime;
  /// Description of the guardrail.
  final pulumi.Input<String>? description;
  /// Display name of the guardrail.
  final pulumi.Input<String>? displayName;
  /// Whether the guardrail is enabled.
  final pulumi.Input<bool>? enabled;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// The ID to use for the guardrail, which will become the final component of
  /// the guardrail's resource name. If not provided, a unique ID will be
  /// automatically assigned for the guardrail.
  final pulumi.Input<String>? guardrailId;
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPolicy>? llmPolicy;
  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPromptSecurity>? llmPromptSecurity;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  final pulumi.Input<GuardrailModelSafety>? modelSafety;
  /// Identifier. The unique identifier of the guardrail.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp when the guardrail was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GuardrailState].
  /// [action] Action that is taken when a certain precondition is met.
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [codeCallback] Guardrail that blocks the conversation based on the code callbacks
  /// [contentFilter] Guardrail that bans certain content from being used in the conversation.
  /// [createTime] Timestamp when the guardrail was created.
  /// [description] Description of the guardrail.
  /// [displayName] Display name of the guardrail.
  /// [enabled] Whether the guardrail is enabled.
  /// [etag] Etag used to ensure the object hasn't changed during a read-modify-write
  /// [guardrailId] The ID to use for the guardrail, which will become the final component of
  /// [llmPolicy] Guardrail that blocks the conversation if the LLM response is considered
  /// [llmPromptSecurity] Guardrail that blocks the conversation if the input is considered unsafe
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [modelSafety] Model safety settings overrides. When this is set, it will override the
  /// [name] Identifier. The unique identifier of the guardrail.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp when the guardrail was last updated.
  GuardrailState({
    this.action,
    this.app,
    this.codeCallback,
    this.contentFilter,
    this.createTime,
    this.description,
    this.displayName,
    this.enabled,
    this.etag,
    this.guardrailId,
    this.llmPolicy,
    this.llmPromptSecurity,
    this.location,
    this.modelSafety,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<GuardrailAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'app': ?app,
      'codeCallback': ?pulumi.Input.mapOptionalInputValue<GuardrailCodeCallback, Map<String, dynamic>>(codeCallback, (value) => value.toMap()),
      'contentFilter': ?pulumi.Input.mapOptionalInputValue<GuardrailContentFilter, Map<String, dynamic>>(contentFilter, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'etag': ?etag,
      'guardrailId': ?guardrailId,
      'llmPolicy': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPolicy, Map<String, dynamic>>(llmPolicy, (value) => value.toMap()),
      'llmPromptSecurity': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPromptSecurity, Map<String, dynamic>>(llmPromptSecurity, (value) => value.toMap()),
      'location': ?location,
      'modelSafety': ?pulumi.Input.mapOptionalInputValue<GuardrailModelSafety, Map<String, dynamic>>(modelSafety, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory GuardrailState.fromMap(Map<String, dynamic> map) {
    return GuardrailState(
      action: map['action'] == null ? null : (GuardrailAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      app: map['app'] == null ? null : (map['app'] as String).input(),
      codeCallback: map['codeCallback'] == null ? null : (GuardrailCodeCallback.fromMap((map['codeCallback'] as Map).cast<String, dynamic>())).input(),
      contentFilter: map['contentFilter'] == null ? null : (GuardrailContentFilter.fromMap((map['contentFilter'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      guardrailId: map['guardrailId'] == null ? null : (map['guardrailId'] as String).input(),
      llmPolicy: map['llmPolicy'] == null ? null : (GuardrailLlmPolicy.fromMap((map['llmPolicy'] as Map).cast<String, dynamic>())).input(),
      llmPromptSecurity: map['llmPromptSecurity'] == null ? null : (GuardrailLlmPromptSecurity.fromMap((map['llmPromptSecurity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      modelSafety: map['modelSafety'] == null ? null : (GuardrailModelSafety.fromMap((map['modelSafety'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

