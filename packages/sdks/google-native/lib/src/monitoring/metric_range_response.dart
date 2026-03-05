// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_monitoring_v3_range_response.dart';

/// A MetricRange is used when each window is good when the value x of a single TimeSeries satisfies range.min &lt;= x &lt;= range.max. The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
class MetricRangeResponse {
  /// Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  final pulumi.Input<GoogleMonitoringV3RangeResponse> range;
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.
  final pulumi.Input<String> timeSeries;

  /// Creates a new [MetricRangeResponse].
  /// [range] Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  /// [timeSeries] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.
  MetricRangeResponse({
    required this.range,
    required this.timeSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': pulumi.Input.mapInputValue<GoogleMonitoringV3RangeResponse, Map<String, dynamic>>(range, (value) => value.toMap()),
      'timeSeries': timeSeries,
    };
  }

  factory MetricRangeResponse.fromMap(Map<String, dynamic> map) {
    return MetricRangeResponse(
      range: pulumi.Input.fromValue(GoogleMonitoringV3RangeResponse.fromMap((map['range']! as Map).cast<String, dynamic>())),
      timeSeries: pulumi.Input.fromValue(map['timeSeries'] as String),
    );
  }
}

