// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HttpRouteRuleMatch criteria for field values that must stay within the specified integer range.
class Int64RangeMatchComputeV1 {
  /// The end of the range (exclusive) in signed long integer format.
  final pulumi.Input<String>? rangeEnd;
  /// The start of the range (inclusive) in signed long integer format.
  final pulumi.Input<String>? rangeStart;

  /// Creates a new [Int64RangeMatchComputeV1].
  /// [rangeEnd] The end of the range (exclusive) in signed long integer format.
  /// [rangeStart] The start of the range (inclusive) in signed long integer format.
  const Int64RangeMatchComputeV1({
    this.rangeEnd,
    this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rangeEnd': ?rangeEnd,
      'rangeStart': ?rangeStart,
    };
  }

  factory Int64RangeMatchComputeV1.fromMap(Map<String, dynamic> map) {
    return Int64RangeMatchComputeV1(
      rangeEnd: (() { final guardedValue = map['rangeEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeStart: (() { final guardedValue = map['rangeStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

