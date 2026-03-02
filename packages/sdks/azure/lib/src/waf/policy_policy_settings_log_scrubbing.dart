// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_policy_settings_log_scrubbing_rule.dart';

class PolicyPolicySettingsLogScrubbing {
  /// Whether the log scrubbing is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// One or more `scrubbing_rule` blocks as define below.
  final pulumi.Input<List<PolicyPolicySettingsLogScrubbingRule>>? rules;

  /// Creates a new [PolicyPolicySettingsLogScrubbing].
  /// [enabled] Whether the log scrubbing is enabled or disabled. Defaults to `true`.
  /// [rules] One or more `scrubbing_rule` blocks as define below.
  PolicyPolicySettingsLogScrubbing({
    this.enabled,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyPolicySettingsLogScrubbingRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyPolicySettingsLogScrubbingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyPolicySettingsLogScrubbing.fromMap(Map<String, dynamic> map) {
    return PolicyPolicySettingsLogScrubbing(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<PolicyPolicySettingsLogScrubbingRule>(map['rules']!, (value) => PolicyPolicySettingsLogScrubbingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

