// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheKeyCustomKeyCookie {
  /// A list of cookies to check for the presence of. The presence of these cookies is included in the cache key.
  final pulumi.Input<List<String>?>? checkPresences;
  /// A list of cookies to include in the cache key.
  final pulumi.Input<List<String>?>? includes;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyCookie].
  /// [checkPresences] A list of cookies to check for the presence of. The presence of these cookies is included in the cache key.
  /// [includes] A list of cookies to include in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyCookie({
    this.checkPresences,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPresences': ?checkPresences,
      'includes': ?includes,
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyCookie.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyCookie(
      checkPresences: (() { final guardedValue = map['checkPresences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
