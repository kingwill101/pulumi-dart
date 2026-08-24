// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersVaryHeaders {
  /// How the header value is treated when building the cache key.
  /// Available values: "bypass", "passthrough", "normalize".
  final pulumi.Input<String> action;
  /// The set of languages to normalize against. Only valid for the `accept-language` header.
  final pulumi.Input<List<String>> languages;
  /// The set of media types to normalize against. Only valid for the `accept` header.
  final pulumi.Input<List<String>> mediaTypes;

  /// Creates a new [GetRulesetRuleActionParametersVaryHeaders].
  /// [action] How the header value is treated when building the cache key.
  /// [languages] The set of languages to normalize against. Only valid for the `accept-language` header.
  /// [mediaTypes] The set of media types to normalize against. Only valid for the `accept` header.
  const GetRulesetRuleActionParametersVaryHeaders({
    required this.action,
    required this.languages,
    required this.mediaTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'languages': languages,
      'mediaTypes': mediaTypes,
    };
  }

  factory GetRulesetRuleActionParametersVaryHeaders.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersVaryHeaders(
      action: pulumi.Input.fromValue(map['action'] as String),
      languages: pulumi.Input.fromValue((map['languages'] as List).cast<String>()),
      mediaTypes: pulumi.Input.fromValue((map['mediaTypes'] as List).cast<String>()),
    );
  }
}
