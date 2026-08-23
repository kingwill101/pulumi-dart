// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_monitoring_v3_range.dart';

/// A MetricRange is used when each window is good when the value x of a single TimeSeries satisfies range.min &lt;= x &lt;= range.max. The provided TimeSeries must have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
class MetricRange {
  /// Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  final pulumi.Input<GoogleMonitoringV3Range>? range;
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.
  final pulumi.Input<String>? timeSeries;

  /// Creates a new [MetricRange].
  /// [range] Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  /// [timeSeries] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying the TimeSeries to use for evaluating window quality.
  const MetricRange({
    this.range,
    this.timeSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?pulumi.Input.mapOptionalInputValue<GoogleMonitoringV3Range, Map<String, dynamic>>(range, (value) => value.toMap()),
      'timeSeries': ?timeSeries,
    };
  }

  factory MetricRange.fromMap(Map<String, dynamic> map) {
    return MetricRange(
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleMonitoringV3Range.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeSeries: (() { final guardedValue = map['timeSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
