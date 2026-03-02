// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IDRange provides a min/max of an allowed range of IDs.
class IDRangePatch {
  /// max is the end of the range, inclusive.
  final pulumi.Input<int>? max;
  /// min is the start of the range, inclusive.
  final pulumi.Input<int>? min;

  /// Creates a new [IDRangePatch].
  /// [max] max is the end of the range, inclusive.
  /// [min] min is the start of the range, inclusive.
  IDRangePatch({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory IDRangePatch.fromMap(Map<String, dynamic> map) {
    return IDRangePatch(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

