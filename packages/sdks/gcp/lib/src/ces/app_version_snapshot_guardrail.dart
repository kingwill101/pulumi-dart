// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_action.dart';
import 'app_version_snapshot_guardrail_code_callback.dart';
import 'app_version_snapshot_guardrail_content_filter.dart';
import 'app_version_snapshot_guardrail_llm_policy.dart';
import 'app_version_snapshot_guardrail_llm_prompt_security.dart';
import 'app_version_snapshot_guardrail_model_safety.dart';

class AppVersionSnapshotGuardrail {
  /// (Output)
  /// Action that is taken when a certain precondition is met.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailAction>>? actions;
  /// (Output)
  /// Guardrail that blocks the conversation based on the code callbacks
  /// provided.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailCodeCallback>>? codeCallbacks;
  /// (Output)
  /// Guardrail that bans certain content from being used in the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailContentFilter>>? contentFilters;
  /// (Output)
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// Whether the guardrail is enabled.
  final pulumi.Input<bool>? enabled;
  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// (Output)
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailLlmPolicy>>? llmPolicies;
  /// (Output)
  /// Guardrail that blocks the conversation if the input is considered unsafe
  /// based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailLlmPromptSecurity>>? llmPromptSecurities;
  /// (Output)
  /// Model safety settings overrides. When this is set, it will override the
  /// default settings and trigger the guardrail if the response is considered
  /// unsafe.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailModelSafety>>? modelSafeties;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// Timestamp when the toolset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AppVersionSnapshotGuardrail].
  /// [actions] (Output)
  /// [codeCallbacks] (Output)
  /// [contentFilters] (Output)
  /// [createTime] (Output)
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [enabled] (Output)
  /// [etag] (Output)
  /// [llmPolicies] (Output)
  /// [llmPromptSecurities] (Output)
  /// [modelSafeties] (Output)
  /// [name] (Output)
  /// [updateTime] (Output)
  const AppVersionSnapshotGuardrail({
    this.actions,
    this.codeCallbacks,
    this.contentFilters,
    this.createTime,
    this.description,
    this.displayName,
    this.enabled,
    this.etag,
    this.llmPolicies,
    this.llmPromptSecurities,
    this.modelSafeties,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'codeCallbacks': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailCodeCallback>, List<Map<String, dynamic>>>(codeCallbacks, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailCodeCallback, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentFilters': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailContentFilter>, List<Map<String, dynamic>>>(contentFilters, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailContentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'etag': ?etag,
      'llmPolicies': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPolicy>, List<Map<String, dynamic>>>(llmPolicies, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'llmPromptSecurities': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPromptSecurity>, List<Map<String, dynamic>>>(llmPromptSecurities, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPromptSecurity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelSafeties': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailModelSafety>, List<Map<String, dynamic>>>(modelSafeties, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailModelSafety, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory AppVersionSnapshotGuardrail.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrail(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailAction>(guardedValue, (value) => AppVersionSnapshotGuardrailAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      codeCallbacks: (() { final guardedValue = map['codeCallbacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailCodeCallback>(guardedValue, (value) => AppVersionSnapshotGuardrailCodeCallback.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentFilters: (() { final guardedValue = map['contentFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailContentFilter>(guardedValue, (value) => AppVersionSnapshotGuardrailContentFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      llmPolicies: (() { final guardedValue = map['llmPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPolicy>(guardedValue, (value) => AppVersionSnapshotGuardrailLlmPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      llmPromptSecurities: (() { final guardedValue = map['llmPromptSecurities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPromptSecurity>(guardedValue, (value) => AppVersionSnapshotGuardrailLlmPromptSecurity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modelSafeties: (() { final guardedValue = map['modelSafeties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailModelSafety>(guardedValue, (value) => AppVersionSnapshotGuardrailModelSafety.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
