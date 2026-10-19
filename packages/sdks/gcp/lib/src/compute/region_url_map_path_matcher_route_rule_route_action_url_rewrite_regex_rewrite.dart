// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite {
  /// The regular expression used to match against the URL path.
  /// It uses RE2 syntax with the following constraints:
  /// * Any single character operators are allowed.
  /// * Groups may only contain a submatch operator, and may not
  /// contain character repetition (for example, `.*`).
  /// * Character repetition (for example, `.*`) may only be used in
  /// a regex together with empty string operators, other
  /// repetitions, ranges, and repetitions of ranges.
  /// * Ranges may only contain character ranges, digit ranges, and
  /// symbols allowed for ranges.
  final pulumi.Input<String> pathPattern;
  /// The substitution used to rewrite the parts of the URL path
  /// matched by pathPattern. May reference capture groups from
  /// pathPattern.
  final pulumi.Input<String> pathSubstitution;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite].
  /// [pathPattern] The regular expression used to match against the URL path.
  /// [pathSubstitution] The substitution used to rewrite the parts of the URL path
  const RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite({
    required this.pathPattern,
    required this.pathSubstitution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathPattern': pathPattern,
      'pathSubstitution': pathSubstitution,
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewriteRegexRewrite(
      pathPattern: pulumi.Input.fromValue(map['pathPattern'] as String),
      pathSubstitution: pulumi.Input.fromValue(map['pathSubstitution'] as String),
    );
  }
}
