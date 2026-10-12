// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flagship_flag_rule.dart';

/// Input properties used for looking up and filtering FlagshipFlag resources.
class FlagshipFlagState {
  /// Cloudflare account ID that owns the Flagship app.
  final pulumi.Input<String?>? accountId;
  /// Flagship app ID returned when the app was created.
  final pulumi.Input<String?>? appId;
  /// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  final pulumi.Input<String?>? defaultVariation;
  /// Optional operator-facing description. It does not affect flag evaluation.
  final pulumi.Input<String?>? description;
  /// When false, the flag bypasses all rules and always serves `defaultVariation`.
  final pulumi.Input<bool?>? enabled;
  /// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  final pulumi.Input<String?>? key;
  /// Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  final pulumi.Input<List<FlagshipFlagRule>?>? rules;
  /// Deprecated compatibility field. Omit it; the API ignores this value and infers the type from the flag's variations.
  /// Available values: "boolean", "string", "number", "json".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;
  final pulumi.Input<String?>? updatedBy;
  /// Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  final pulumi.Input<Map<String, String>?>? variations;

  /// Creates a new [FlagshipFlagState].
  /// [accountId] Cloudflare account ID that owns the Flagship app.
  /// [appId] Flagship app ID returned when the app was created.
  /// [defaultVariation] Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  /// [description] Optional operator-facing description. It does not affect flag evaluation.
  /// [enabled] When false, the flag bypasses all rules and always serves `defaultVariation`.
  /// [key] Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  /// [rules] Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  /// [type] Deprecated compatibility field. Omit it; the API ignores this value and infers the type from the flag's variations.
  /// [updatedAt] Optional.
  /// [updatedBy] Optional.
  /// [variations] Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  const FlagshipFlagState({
    this.accountId,
    this.appId,
    this.defaultVariation,
    this.description,
    this.enabled,
    this.key,
    this.rules,
    this.type,
    this.updatedAt,
    this.updatedBy,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'defaultVariation': ?defaultVariation,
      'description': ?description,
      'enabled': ?enabled,
      'key': ?key,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FlagshipFlagRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FlagshipFlagRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'updatedAt': ?updatedAt,
      'updatedBy': ?updatedBy,
      'variations': ?variations,
    };
  }

  factory FlagshipFlagState.fromMap(Map<String, dynamic> map) {
    return FlagshipFlagState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVariation: (() { final guardedValue = map['defaultVariation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlagshipFlagRule>(guardedValue, (value) => FlagshipFlagRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
