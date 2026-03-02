// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Min and max value of a status code range.
class MonitorConfigExpectedStatusCodeRangesItem {
  /// Max status code.
  final pulumi.Input<int>? max;
  /// Min status code.
  final pulumi.Input<int>? min;

  /// Creates a new [MonitorConfigExpectedStatusCodeRangesItem].
  /// [max] Max status code.
  /// [min] Min status code.
  MonitorConfigExpectedStatusCodeRangesItem({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory MonitorConfigExpectedStatusCodeRangesItem.fromMap(Map<String, dynamic> map) {
    return MonitorConfigExpectedStatusCodeRangesItem(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

