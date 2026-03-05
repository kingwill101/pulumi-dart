// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.
class TriggerResponse {
  /// The absolute number of time series that must fail the predicate for the condition to be triggered.
  final pulumi.Input<int> count;
  /// The percentage of time series that must fail the predicate for the condition to be triggered.
  final pulumi.Input<double> percent;

  /// Creates a new [TriggerResponse].
  /// [count] The absolute number of time series that must fail the predicate for the condition to be triggered.
  /// [percent] The percentage of time series that must fail the predicate for the condition to be triggered.
  TriggerResponse({
    required this.count,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'percent': percent,
    };
  }

  factory TriggerResponse.fromMap(Map<String, dynamic> map) {
    return TriggerResponse(
      count: pulumi.Input.fromValue(map['count'] as int),
      percent: pulumi.Input.fromValue(map['percent'] as double),
    );
  }
}

