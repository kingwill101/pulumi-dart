// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flagship_flag_rule.dart';

/// {@template pulumi_index_flagship_flag_flagship_flag_args_doc}
/// The set of arguments for FlagshipFlag.
/// {@endtemplate}
/// {@macro pulumi_index_flagship_flag_flagship_flag_args_doc}
class FlagshipFlagArgs {
  /// Cloudflare account ID that owns the Flagship app.
  final pulumi.Input<String> accountId;
  /// Flagship app ID returned when the app was created.
  final pulumi.Input<String> appId;
  /// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  final pulumi.Input<String> defaultVariation;
  /// Optional operator-facing description. It does not affect flag evaluation.
  final pulumi.Input<String?>? description;
  /// When false, the flag bypasses all rules and always serves `defaultVariation`.
  final pulumi.Input<bool> enabled;
  /// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  final pulumi.Input<String> key;
  /// Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  final pulumi.Input<List<FlagshipFlagRule>> rules;
  /// Deprecated compatibility field. Omit it; the API ignores this value and infers the type from the flag's variations.
  /// Available values: "boolean", "string", "number", "json".
  final pulumi.Input<String?>? type;
  /// Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  final pulumi.Input<Map<String, String>> variations;

  /// Creates a new [FlagshipFlagArgs].
  /// [accountId] Cloudflare account ID that owns the Flagship app.
  /// [appId] Flagship app ID returned when the app was created.
  /// [defaultVariation] Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  /// [description] Optional operator-facing description. It does not affect flag evaluation.
  /// [enabled] When false, the flag bypasses all rules and always serves `defaultVariation`.
  /// [key] Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  /// [rules] Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  /// [type] Deprecated compatibility field. Omit it; the API ignores this value and infers the type from the flag's variations.
  /// [variations] Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  const FlagshipFlagArgs({
    required this.accountId,
    required this.appId,
    required this.defaultVariation,
    this.description,
    required this.enabled,
    required this.key,
    required this.rules,
    this.type,
    required this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': appId,
      'defaultVariation': defaultVariation,
      'description': ?description,
      'enabled': enabled,
      'key': key,
      'rules': pulumi.Input.mapInputValue<List<FlagshipFlagRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FlagshipFlagRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'variations': variations,
    };
  }

  factory FlagshipFlagArgs.fromMap(Map<String, dynamic> map) {
    return FlagshipFlagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      defaultVariation: pulumi.Input.fromValue(map['defaultVariation'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      key: pulumi.Input.fromValue(map['key'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<FlagshipFlagRule>(map['rules']!, (value) => FlagshipFlagRule.fromMap((value as Map).cast<String, dynamic>()))),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variations: pulumi.Input.fromValue((map['variations'] as Map).cast<String, String>()),
    );
  }
}
