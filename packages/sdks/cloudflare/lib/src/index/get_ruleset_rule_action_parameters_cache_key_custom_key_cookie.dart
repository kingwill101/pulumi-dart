// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheKeyCustomKeyCookie {
  /// A list of cookies to check for the presence of. The presence of these cookies is included in the cache key.
  final pulumi.Input<List<String>> checkPresences;
  /// A list of cookies to include in the cache key.
  final pulumi.Input<List<String>> includes;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyCookie].
  /// [checkPresences] A list of cookies to check for the presence of. The presence of these cookies is included in the cache key.
  /// [includes] A list of cookies to include in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyCookie({
    required this.checkPresences,
    required this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPresences': checkPresences,
      'includes': includes,
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyCookie.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyCookie(
      checkPresences: pulumi.Input.fromValue((map['checkPresences'] as List).cast<String>()),
      includes: pulumi.Input.fromValue((map['includes'] as List).cast<String>()),
    );
  }
}
