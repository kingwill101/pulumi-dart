// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersVaryHeaders {
  /// How the header value is treated when building the cache key.
  /// Available values: "bypass", "passthrough", "normalize".
  final pulumi.Input<String> action;
  /// The set of languages to normalize against. Only valid for the `accept-language` header.
  final pulumi.Input<List<String>?>? languages;
  /// The set of media types to normalize against. Only valid for the `accept` header.
  final pulumi.Input<List<String>?>? mediaTypes;

  /// Creates a new [RulesetRuleActionParametersVaryHeaders].
  /// [action] How the header value is treated when building the cache key.
  /// [languages] The set of languages to normalize against. Only valid for the `accept-language` header.
  /// [mediaTypes] The set of media types to normalize against. Only valid for the `accept` header.
  const RulesetRuleActionParametersVaryHeaders({
    required this.action,
    this.languages,
    this.mediaTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'languages': ?languages,
      'mediaTypes': ?mediaTypes,
    };
  }

  factory RulesetRuleActionParametersVaryHeaders.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersVaryHeaders(
      action: pulumi.Input.fromValue(map['action'] as String),
      languages: (() { final guardedValue = map['languages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mediaTypes: (() { final guardedValue = map['mediaTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
