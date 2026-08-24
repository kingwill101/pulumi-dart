// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheKeyCustomKeyHeader {
  /// A list of headers to check for the presence of. The presence of these headers is included in the cache key.
  final pulumi.Input<List<String>> checkPresences;
  /// A mapping of header names to a list of values. If a header is present in the request and contains any of the values provided, its value is included in the cache key.
  final pulumi.Input<Map<String, List<String>>> contains;
  /// Whether to exclude the origin header in the cache key.
  final pulumi.Input<bool> excludeOrigin;
  /// A list of headers to include in the cache key.
  final pulumi.Input<List<String>> includes;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyHeader].
  /// [checkPresences] A list of headers to check for the presence of. The presence of these headers is included in the cache key.
  /// [contains] A mapping of header names to a list of values. If a header is present in the request and contains any of the values provided, its value is included in the cache key.
  /// [excludeOrigin] Whether to exclude the origin header in the cache key.
  /// [includes] A list of headers to include in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyHeader({
    required this.checkPresences,
    required this.contains,
    required this.excludeOrigin,
    required this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPresences': checkPresences,
      'contains': contains,
      'excludeOrigin': excludeOrigin,
      'includes': includes,
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyHeader.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyHeader(
      checkPresences: pulumi.Input.fromValue((map['checkPresences'] as List).cast<String>()),
      contains: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['contains']!, (value) => (value as List).cast<String>())),
      excludeOrigin: pulumi.Input.fromValue(map['excludeOrigin'] as bool),
      includes: pulumi.Input.fromValue((map['includes'] as List).cast<String>()),
    );
  }
}
