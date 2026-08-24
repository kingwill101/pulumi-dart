// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flag_rule.dart';

/// Result data returned by getFlagshipFlag.
class GetFlagshipFlagResult {
  /// Cloudflare account ID.
  final String? accountId;
  /// App identifier.
  final String? appId;
  /// Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  final String? defaultVariation;
  final String? description;
  /// When false, the flag bypasses all rules and always serves `defaultVariation`.
  final bool? enabled;
  /// Flag key (slug).
  final String? flagKey;
  /// Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  final String? key;
  /// Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  final List<GetFlagshipFlagRule>? rules;
  /// Value type of the flag's variations. Inferred from the variation values on write, so it may be omitted in requests.
  /// Available values: "boolean", "string", "number", "json".
  final String? type;
  final String? updatedAt;
  final String? updatedBy;
  /// Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  final Map<String, String>? variations;

  /// Creates a new [GetFlagshipFlagResult].
  /// [accountId] Cloudflare account ID.
  /// [appId] App identifier.
  /// [defaultVariation] Variation served when no rule matches or the flag is disabled. Must be a key in `variations`.
  /// [description] Optional.
  /// [enabled] When false, the flag bypasses all rules and always serves `defaultVariation`.
  /// [flagKey] Flag key (slug).
  /// [key] Unique identifier for the flag within an app. Used in all evaluation and SDK calls.
  /// [rules] Targeting rules evaluated in ascending `priority`; the first matching rule wins. An empty array means the flag always serves `defaultVariation`.
  /// [type] Value type of the flag's variations. Inferred from the variation values on write, so it may be omitted in requests.
  /// [updatedAt] Optional.
  /// [updatedBy] Optional.
  /// [variations] Map of variation name to value. All values must be the same type (boolean, string, number, or JSON object/array). Each serialized value must be 10KB or smaller.
  const GetFlagshipFlagResult({
    this.accountId,
    this.appId,
    this.defaultVariation,
    this.description,
    this.enabled,
    this.flagKey,
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
      'flagKey': ?flagKey,
      'key': ?key,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFlagshipFlagRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'updatedAt': ?updatedAt,
      'updatedBy': ?updatedBy,
      'variations': ?variations,
    };
  }

  factory GetFlagshipFlagResult.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultVariation: (() { final guardedValue = map['defaultVariation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      flagKey: (() { final guardedValue = map['flagKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFlagshipFlagRule>(guardedValue, (value) => GetFlagshipFlagRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
