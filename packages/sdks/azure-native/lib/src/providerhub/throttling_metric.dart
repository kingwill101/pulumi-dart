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
  const ThrottlingMetric({
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
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: pulumi.Input.fromValue(map['limit'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

