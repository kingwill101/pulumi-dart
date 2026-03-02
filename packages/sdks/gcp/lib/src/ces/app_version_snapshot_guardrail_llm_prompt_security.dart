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

  /// Creates a new [AppVersionSnapshotGuardrailLlmPromptSecurity].
  /// [customPolicies] (Output)
  /// [defaultSettings] (Output)
  AppVersionSnapshotGuardrailLlmPromptSecurity({
    this.customPolicies,
    this.defaultSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicies': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy>, List<Map<String, dynamic>>>(customPolicies, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting>, List<Map<String, dynamic>>>(defaultSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotGuardrailLlmPromptSecurity.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailLlmPromptSecurity(
      customPolicies: map['customPolicies'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy>(map['customPolicies'], (value) => AppVersionSnapshotGuardrailLlmPromptSecurityCustomPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultSettings: map['defaultSettings'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting>(map['defaultSettings'], (value) => AppVersionSnapshotGuardrailLlmPromptSecurityDefaultSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

