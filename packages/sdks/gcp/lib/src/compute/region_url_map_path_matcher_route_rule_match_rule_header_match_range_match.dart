// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch {
  /// The end of the range (exclusive).
  final pulumi.Input<int> rangeEnd;
  /// The start of the range (inclusive).
  final pulumi.Input<int> rangeStart;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch].
  /// [rangeEnd] The end of the range (exclusive).
  /// [rangeStart] The start of the range (inclusive).
  const RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rangeEnd': rangeEnd,
      'rangeStart': rangeStart,
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch(
      rangeEnd: pulumi.Input.fromValue((map['rangeEnd'] as num).toInt()),
      rangeStart: pulumi.Input.fromValue((map['rangeStart'] as num).toInt()),
    );
  }
}
