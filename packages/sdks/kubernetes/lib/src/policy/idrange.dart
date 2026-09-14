// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IDRange provides a min/max of an allowed range of IDs.
class IDRange {
  /// max is the end of the range, inclusive.
  final pulumi.Input<int> max;
  /// min is the start of the range, inclusive.
  final pulumi.Input<int> min;

  /// Creates a new [IDRange].
  /// [max] max is the end of the range, inclusive.
  /// [min] min is the start of the range, inclusive.
  const IDRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory IDRange.fromMap(Map<String, dynamic> map) {
    return IDRange(
      max: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['max'])),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}
