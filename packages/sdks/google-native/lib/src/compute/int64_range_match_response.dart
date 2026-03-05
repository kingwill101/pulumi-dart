// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatchResponse {
  /// The end of the range (exclusive) in signed long integer format.
  final pulumi.Input<String> rangeEnd;
  /// The start of the range (inclusive) in signed long integer format.
  final pulumi.Input<String> rangeStart;

  /// Creates a new [Int64RangeMatchResponse].
  /// [rangeEnd] The end of the range (exclusive) in signed long integer format.
  /// [rangeStart] The start of the range (inclusive) in signed long integer format.
  Int64RangeMatchResponse({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rangeEnd': rangeEnd,
      'rangeStart': rangeStart,
    };
  }

  factory Int64RangeMatchResponse.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatchResponse(
      rangeEnd: pulumi.Input.fromValue(map['rangeEnd'] as String),
      rangeStart: pulumi.Input.fromValue(map['rangeStart'] as String),
    );
  }
}

