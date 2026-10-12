// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch {
  /// The end of the range (exclusive).
  final pulumi.Input<int> rangeEnd;
  /// The start of the range (inclusive).
  final pulumi.Input<int> rangeStart;

  /// Creates a new [URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch].
  /// [rangeEnd] The end of the range (exclusive).
  /// [rangeStart] The start of the range (inclusive).
  const URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rangeEnd': rangeEnd,
      'rangeStart': rangeStart,
    };
  }

  factory URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch(
      rangeEnd: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rangeEnd'])),
      rangeStart: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rangeStart'])),
    );
  }
}
