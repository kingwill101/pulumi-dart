// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatch {
  /// The end of the range (exclusive) in signed long integer format.
  final pulumi.Input<String>? rangeEnd;
  /// The start of the range (inclusive) in signed long integer format.
  final pulumi.Input<String>? rangeStart;

  /// Creates a new [Int64RangeMatch].
  /// [rangeEnd] The end of the range (exclusive) in signed long integer format.
  /// [rangeStart] The start of the range (inclusive) in signed long integer format.
  Int64RangeMatch({
    this.rangeEnd,
    this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rangeEnd': ?rangeEnd,
      'rangeStart': ?rangeStart,
    };
  }

  factory Int64RangeMatch.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatch(
      rangeEnd: map['rangeEnd'] == null ? null : (map['rangeEnd']! as String).input(),
      rangeStart: map['rangeStart'] == null ? null : (map['rangeStart']! as String).input(),
    );
  }
}

