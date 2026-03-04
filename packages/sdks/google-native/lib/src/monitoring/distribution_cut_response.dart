// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_monitoring_v3_range_response.dart';

/// A DistributionCut defines a TimeSeries and thresholds used for measuring good service and total service. The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service will be the estimated count of values in the Distribution that fall within the specified min and max.
class DistributionCutResponse {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.
  final pulumi.Input<String> distributionFilter;

  /// Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  final pulumi.Input<GoogleMonitoringV3RangeResponse> range;

  /// Creates a new [DistributionCutResponse].
  /// [distributionFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.
  /// [range] Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  DistributionCutResponse({
    required this.distributionFilter,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionFilter': distributionFilter,
      'range':
          pulumi.Input.mapInputValue<
            GoogleMonitoringV3RangeResponse,
            Map<String, dynamic>
          >(range, (value) => value.toMap()),
    };
  }

  factory DistributionCutResponse.fromMap(Map<String, dynamic> map) {
    return DistributionCutResponse(
      distributionFilter: pulumi.Input.fromValue(
        map['distributionFilter'] as String,
      ),
      range: pulumi.Input.fromValue(
        GoogleMonitoringV3RangeResponse.fromMap(
          (map['range']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
