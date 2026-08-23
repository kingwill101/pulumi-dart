// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_monitoring_v3_range.dart';

/// A DistributionCut defines a TimeSeries and thresholds used for measuring good service and total service. The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service will be the estimated count of values in the Distribution that fall within the specified min and max.
class DistributionCut {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.
  final pulumi.Input<String>? distributionFilter;
  /// Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  final pulumi.Input<GoogleMonitoringV3Range>? range;

  /// Creates a new [DistributionCut].
  /// [distributionFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.
  /// [range] Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  const DistributionCut({
    this.distributionFilter,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionFilter': ?distributionFilter,
      'range': ?pulumi.Input.mapOptionalInputValue<GoogleMonitoringV3Range, Map<String, dynamic>>(range, (value) => value.toMap()),
    };
  }

  factory DistributionCut.fromMap(Map<String, dynamic> map) {
    return DistributionCut(
      distributionFilter: (() { final guardedValue = map['distributionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleMonitoringV3Range.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
