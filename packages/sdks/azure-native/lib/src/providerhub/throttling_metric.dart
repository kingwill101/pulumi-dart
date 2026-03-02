// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThrottlingMetric {
  /// The interval.
  final pulumi.Input<String>? interval;
  /// The limit.
  final pulumi.Input<double> limit;
  /// The throttling metric type
  final pulumi.Input<String> type;

  /// Creates a new [ThrottlingMetric].
  /// [interval] The interval.
  /// [limit] The limit.
  /// [type] The throttling metric type
  ThrottlingMetric({
    this.interval,
    required this.limit,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'limit': limit,
      'type': type,
    };
  }

  factory ThrottlingMetric.fromMap(Map<String, dynamic> map) {
    return ThrottlingMetric(
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      limit: (map['limit'] as double).input(),
      type: (map['type'] as String).input(),
    );
  }
}

