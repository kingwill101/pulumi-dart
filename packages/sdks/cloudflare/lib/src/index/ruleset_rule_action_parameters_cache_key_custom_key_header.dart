// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheKeyCustomKeyHeader {
  /// A list of headers to check for the presence of. The presence of these headers is included in the cache key.
  final pulumi.Input<List<String>?>? checkPresences;
  /// A mapping of header names to a list of values. If a header is present in the request and contains any of the values provided, its value is included in the cache key.
  final pulumi.Input<Map<String, List<String>>?>? contains;
  /// Whether to exclude the origin header in the cache key.
  final pulumi.Input<bool?>? excludeOrigin;
  /// A list of headers to include in the cache key.
  final pulumi.Input<List<String>?>? includes;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyHeader].
  /// [checkPresences] A list of headers to check for the presence of. The presence of these headers is included in the cache key.
  /// [contains] A mapping of header names to a list of values. If a header is present in the request and contains any of the values provided, its value is included in the cache key.
  /// [excludeOrigin] Whether to exclude the origin header in the cache key.
  /// [includes] A list of headers to include in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyHeader({
    this.checkPresences,
    this.contains,
    this.excludeOrigin,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPresences': ?checkPresences,
      'contains': ?contains,
      'excludeOrigin': ?excludeOrigin,
      'includes': ?includes,
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyHeader.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyHeader(
      checkPresences: (() { final guardedValue = map['checkPresences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      excludeOrigin: (() { final guardedValue = map['excludeOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
