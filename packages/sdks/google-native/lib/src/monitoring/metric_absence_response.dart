// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation_response_monitoring_v3.dart';
import 'trigger_response.dart';

/// A condition type that checks that monitored resources are reporting data. The configuration defines a metric and a set of monitored resources. The predicate is considered in violation when a time series for the specified metric of a monitored resource does not include any data in the specified duration.
class MetricAbsenceResponse {
  /// Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.
  final pulumi.Input<List<AggregationResponseMonitoringV3>> aggregations;

  /// The amount of time that a time series must fail to report new data to be considered failing. The minimum value of this field is 120 seconds. Larger values that are a multiple of a minute--for example, 240 or 300 seconds--are supported. If an invalid value is given, an error will be returned. The Duration.nanos field is ignored.
  final pulumi.Input<String> duration;

  /// A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
  final pulumi.Input<String> filter;

  /// The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations.
  final pulumi.Input<TriggerResponse> trigger;

  /// Creates a new [MetricAbsenceResponse].
  /// [aggregations] Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources). Multiple aggregations are applied in the order specified.This field is similar to the one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the ListTimeSeries method when debugging this field.
  /// [duration] The amount of time that a time series must fail to report new data to be considered failing. The minimum value of this field is 120 seconds. Larger values that are a multiple of a minute--for example, 240 or 300 seconds--are supported. If an invalid value is given, an error will be returned. The Duration.nanos field is ignored.
  /// [filter] A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the ListTimeSeries request (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that call is useful to verify the time series that will be retrieved / processed). The filter must specify the metric type and the resource type. Optionally, it can specify resource labels and metric labels. This field must not exceed 2048 Unicode characters in length.
  /// [trigger] The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations.
  MetricAbsenceResponse({
    required this.aggregations,
    required this.duration,
    required this.filter,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations':
          pulumi.Input.mapInputValue<
            List<AggregationResponseMonitoringV3>,
            List<Map<String, dynamic>>
          >(
            aggregations,
            (value) =>
                pulumi.Input.encodeList<
                  AggregationResponseMonitoringV3,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'duration': duration,
      'filter': filter,
      'trigger':
          pulumi.Input.mapInputValue<TriggerResponse, Map<String, dynamic>>(
            trigger,
            (value) => value.toMap(),
          ),
    };
  }

  factory MetricAbsenceResponse.fromMap(Map<String, dynamic> map) {
    return MetricAbsenceResponse(
      aggregations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AggregationResponseMonitoringV3>(
          map['aggregations']!,
          (value) => AggregationResponseMonitoringV3.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      trigger: pulumi.Input.fromValue(
        TriggerResponse.fromMap(
          (map['trigger']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
