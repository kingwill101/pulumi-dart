// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_windows_based_sli_metric_mean_in_range_range.dart';

class SloWindowsBasedSliMetricMeanInRange {
  /// Range of numerical values. The computed good_service
  /// will be the count of values x in the Distribution such
  /// that range.min &lt;= x &lt;= range.max. inclusive of min and
  /// max. Open ranges can be defined by setting
  /// just one of min or max. Mean value `X` of `time_series`
  /// values should satisfy `range.min &lt;= X &lt;= range.max` for a
  /// good service.
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSliMetricMeanInRangeRange> range;
  /// A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// specifying the TimeSeries to use for evaluating window
  /// The provided TimeSeries must have ValueType = INT64 or
  /// ValueType = DOUBLE and MetricKind = GAUGE. Mean value `X`
  /// should satisfy `range.min &lt;= X &lt;= range.max`
  /// under good service.
  final pulumi.Input<String> timeSeries;

  /// Creates a new [SloWindowsBasedSliMetricMeanInRange].
  /// [range] Range of numerical values. The computed good_service
  /// [timeSeries] A [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  SloWindowsBasedSliMetricMeanInRange({
    required this.range,
    required this.timeSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': pulumi.Input.mapInputValue<SloWindowsBasedSliMetricMeanInRangeRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'timeSeries': timeSeries,
    };
  }

  factory SloWindowsBasedSliMetricMeanInRange.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliMetricMeanInRange(
      range: pulumi.Input.fromValue(SloWindowsBasedSliMetricMeanInRangeRange.fromMap((map['range']! as Map).cast<String, dynamic>())),
      timeSeries: pulumi.Input.fromValue(map['timeSeries'] as String),
    );
  }
}

