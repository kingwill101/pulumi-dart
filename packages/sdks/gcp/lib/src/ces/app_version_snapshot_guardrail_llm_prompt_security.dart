// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_llm_prompt_security_custom_policy.dart';
import 'app_version_snapshot_guardrail_llm_prompt_security_default_setting.dart';

class AppVersionSnapshotGuardrailLlmPromptSecurity {
  /// (Output)
  /// Guardrail that blocks the conversation if the LLM response is considered
  /// violating the policy based on the LLM classification.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy>>? customPolicies;
  /// (Output)
  /// Configuration for default system security settings.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting>>? defaultSettings;
  /// (Output)
  /// If an error occurs during the policy check, fail open and do not trigger
  /// the guardrail.
  final pulumi.Input<bool>? failOpen;

  /// Creates a new [AppVersionSnapshotGuardrailLlmPromptSecurity].
  /// [customPolicies] (Output)
  /// [defaultSettings] (Output)
  /// [failOpen] (Output)
  const AppVersionSnapshotGuardrailLlmPromptSecurity({
    this.customPolicies,
    this.defaultSettings,
    this.failOpen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicies': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy>, List<Map<String, dynamic>>>(customPolicies, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting>, List<Map<String, dynamic>>>(defaultSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failOpen': ?failOpen,
    };
  }

  factory AppVersionSnapshotGuardrailLlmPromptSecurity.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailLlmPromptSecurity(
      customPolicies: (() { final guardedValue = map['customPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy>(guardedValue, (value) => AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultSettings: (() { final guardedValue = map['defaultSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting>(guardedValue, (value) => AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
