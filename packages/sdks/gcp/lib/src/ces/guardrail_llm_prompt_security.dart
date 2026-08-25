// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_llm_prompt_security_custom_policy.dart';
import 'guardrail_llm_prompt_security_default_settings.dart';

class GuardrailLlmPromptSecurity {
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPromptSecurityCustomPolicy?>? customPolicy;
  /// Configuration for default system security settings.
  /// Structure is documented below.
  final pulumi.Input<GuardrailLlmPromptSecurityDefaultSettings?>? defaultSettings;
  /// Determines the behavior when the guardrail encounters an LLM error.
  /// - If true: the guardrail is bypassed.
  /// - If false (default): the guardrail triggers/blocks.
  /// Note: If a custom policy is provided, this field is ignored in favor of
  /// the policy's 'failOpen' configuration.
  final pulumi.Input<bool?>? failOpen;

  /// Creates a new [GuardrailLlmPromptSecurity].
  /// [customPolicy] Guardrail that blocks the conversation if the LLM response is considered
  /// [defaultSettings] Configuration for default system security settings.
  /// [failOpen] Determines the behavior when the guardrail encounters an LLM error.
  const GuardrailLlmPromptSecurity({
    this.customPolicy,
    this.defaultSettings,
    this.failOpen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPromptSecurityCustomPolicy, Map<String, dynamic>>(customPolicy, (value) => value.toMap()),
      'defaultSettings': ?pulumi.Input.mapOptionalInputValue<GuardrailLlmPromptSecurityDefaultSettings, Map<String, dynamic>>(defaultSettings, (value) => value.toMap()),
      'failOpen': ?failOpen,
    };
  }

  factory GuardrailLlmPromptSecurity.fromMap(Map<String, dynamic> map) {
    return GuardrailLlmPromptSecurity(
      customPolicy: (() { final guardedValue = map['customPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailLlmPromptSecurityCustomPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultSettings: (() { final guardedValue = map['defaultSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailLlmPromptSecurityDefaultSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
