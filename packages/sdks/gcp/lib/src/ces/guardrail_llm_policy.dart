// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_llm_policy_model_settings.dart';

class GuardrailLlmPolicy {
  /// By default, the LLM policy check is bypassed for short utterances.
  /// Enabling this setting applies the policy check to all utterances,
  /// including those that would normally be skipped.
  final pulumi.Input<bool?>? allowShortUtterance;
  /// If an error occurs during the policy check, fail open and do not trigger
  /// the guardrail.
  final pulumi.Input<bool?>? failOpen;
  /// When checking this policy, consider the last 'n' messages in the
  /// conversation.
  /// When not set a default value of 10 will be used.
  final pulumi.Input<int?>? maxConversationMessages;
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPolicyModelSettings?>? modelSettings;
  /// Defines when to apply the policy check during the conversation. If set to
  /// `POLICY_SCOPE_UNSPECIFIED`, the policy will be applied to the user input.
  /// When applying the policy to the agent response, additional latency will
  /// be introduced before the agent can respond.
  /// Possible values:
  /// USER_QUERY
  /// AGENT_RESPONSE
  /// USER_QUERY_AND_AGENT_RESPONSE
  /// Possible values are: `USER_QUERY`, `AGENT_RESPONSE`, `USER_QUERY_AND_AGENT_RESPONSE`.
  final pulumi.Input<String> policyScope;
  /// Policy prompt.
  final pulumi.Input<String> prompt;

  /// Creates a new [GuardrailLlmPolicy].
  /// [allowShortUtterance] By default, the LLM policy check is bypassed for short utterances.
  /// [failOpen] If an error occurs during the policy check, fail open and do not trigger
  /// [maxConversationMessages] When checking this policy, consider the last 'n' messages in the
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [policyScope] Defines when to apply the policy check during the conversation. If set to
  /// [prompt] Policy prompt.
  const GuardrailLlmPolicy({
    this.allowShortUtterance,
    this.failOpen,
    this.maxConversationMessages,
    this.modelSettings,
    required this.policyScope,
    required this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowShortUtterance': ?allowShortUtterance,
      'failOpen': ?failOpen,
      'maxConversationMessages': ?maxConversationMessages,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPolicyModelSettings, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'policyScope': policyScope,
      'prompt': prompt,
    };
  }

  factory GuardrailLlmPolicy.fromMap(Map<String, dynamic> map) {
    return GuardrailLlmPolicy(
      allowShortUtterance: (() { final guardedValue = map['allowShortUtterance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxConversationMessages: (() { final guardedValue = map['maxConversationMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailLlmPolicyModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyScope: pulumi.Input.fromValue(map['policyScope'] as String),
      prompt: pulumi.Input.fromValue(map['prompt'] as String),
    );
  }
}
