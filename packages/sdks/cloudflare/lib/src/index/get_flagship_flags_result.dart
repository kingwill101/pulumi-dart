// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flags_result_rule.dart';

class GetFlagshipFlagsResult {
  /// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  final pulumi.Input<String> defaultVariation;
  /// Optional operator-facing description. It does not affect flag evaluation.
  final pulumi.Input<String> description;
  /// When false, the flag bypasses all rules and always serves `defaultVariation`.
  final pulumi.Input<bool> enabled;
  /// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  final pulumi.Input<String> id;
  /// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  final pulumi.Input<String> key;
  /// Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  final pulumi.Input<List<GetFlagshipFlagsResultRule>> rules;
  /// Server-inferred value type shared by all of the flag's variations.
  /// Available values: "boolean", "string", "number", "json".
  final pulumi.Input<String> type;
  final pulumi.Input<String> updatedAt;
  final pulumi.Input<String> updatedBy;
  /// Map of variation name to value. All values share the same type (boolean, string, number, or JSON object/array), and each serialized value stays within 10KB.
  final pulumi.Input<Map<String, String>> variations;

  /// Creates a new [GetFlagshipFlagsResult].
  /// [defaultVariation] Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  /// [description] Optional operator-facing description. It does not affect flag evaluation.
  /// [enabled] When false, the flag bypasses all rules and always serves `defaultVariation`.
  /// [id] Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  /// [key] Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  /// [rules] Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  /// [type] Server-inferred value type shared by all of the flag's variations.
  /// [updatedAt] Required.
  /// [updatedBy] Required.
  /// [variations] Map of variation name to value. All values share the same type (boolean, string, number, or JSON object/array), and each serialized value stays within 10KB.
  const GetFlagshipFlagsResult({
    required this.defaultVariation,
    required this.description,
    required this.enabled,
    required this.id,
    required this.key,
    required this.rules,
    required this.type,
    required this.updatedAt,
    required this.updatedBy,
    required this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVariation': defaultVariation,
      'description': description,
      'enabled': enabled,
      'id': id,
      'key': key,
      'rules': pulumi.Input.mapInputValue<List<GetFlagshipFlagsResultRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetFlagshipFlagsResultRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'updatedAt': updatedAt,
      'updatedBy': updatedBy,
      'variations': variations,
    };
  }

  factory GetFlagshipFlagsResult.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagsResult(
      defaultVariation: pulumi.Input.fromValue(map['defaultVariation'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFlagshipFlagsResultRule>(map['rules']!, (value) => GetFlagshipFlagsResultRule.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      updatedBy: pulumi.Input.fromValue(map['updatedBy'] as String),
      variations: pulumi.Input.fromValue((map['variations'] as Map).cast<String, String>()),
    );
  }
}
