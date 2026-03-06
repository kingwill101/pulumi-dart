// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_llm_policy_model_setting.dart';

class AppVersionSnapshotGuardrailLlmPolicy {
  /// (Output)
  /// If an error occurs during the policy check, fail open and do not trigger
  /// the guardrail.
  final pulumi.Input<bool>? failOpen;
  /// (Output)
  /// When checking this policy, consider the last 'n' messages in the
  /// conversation.
  /// When not set a default value of 10 will be used.
  final pulumi.Input<int>? maxConversationMessages;
  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailLlmPolicyModelSetting>>? modelSettings;
  /// (Output)
  /// Defines when to apply the policy check during the conversation. If set to
  /// `POLICY_SCOPE_UNSPECIFIED`, the policy will be applied to the user input.
  /// When applying the policy to the agent response, additional latency will
  /// be introduced before the agent can respond.
  /// Possible values:
  /// USER_QUERY
  /// AGENT_RESPONSE
  /// USER_QUERY_AND_AGENT_RESPONSE
  final pulumi.Input<String>? policyScope;
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String>? prompt;

  /// Creates a new [AppVersionSnapshotGuardrailLlmPolicy].
  /// [failOpen] (Output)
  /// [maxConversationMessages] (Output)
  /// [modelSettings] (Output)
  /// [policyScope] (Output)
  /// [prompt] (Output)
  const AppVersionSnapshotGuardrailLlmPolicy({
    this.failOpen,
    this.maxConversationMessages,
    this.modelSettings,
    this.policyScope,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failOpen': ?failOpen,
      'maxConversationMessages': ?maxConversationMessages,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPolicyModelSetting>, List<Map<String, dynamic>>>(modelSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPolicyModelSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyScope': ?policyScope,
      'prompt': ?prompt,
    };
  }

  factory AppVersionSnapshotGuardrailLlmPolicy.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailLlmPolicy(
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxConversationMessages: (() { final guardedValue = map['maxConversationMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPolicyModelSetting>(guardedValue, (value) => AppVersionSnapshotGuardrailLlmPolicyModelSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyScope: (() { final guardedValue = map['policyScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

