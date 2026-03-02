// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ops_analytics_query_response.dart';
import 'time_series_filter_ratio_response.dart';
import 'time_series_filter_response.dart';

/// TimeSeriesQuery collects the set of supported methods for querying time series data from the Stackdriver metrics API.
class TimeSeriesQueryResponse {
  /// Preview: A query used to fetch a time series, category series, or numeric series with SQL. This is a preview feature and may be subject to change before final release.
  final pulumi.Input<OpsAnalyticsQueryResponse> opsAnalyticsQuery;
  /// Optional. If set, Cloud Monitoring will treat the full query duration as the alignment period so that there will be only 1 output value.*Note: This could override the configured alignment period except for the cases where a series of data points are expected, like - XyChart - Scorecard's spark chart
  final pulumi.Input<bool> outputFullDuration;
  /// A query used to fetch time series with PromQL.
  final pulumi.Input<String> prometheusQuery;
  /// Filter parameters to fetch time series.
  final pulumi.Input<TimeSeriesFilterResponse> timeSeriesFilter;
  /// Parameters to fetch a ratio between two time series filters.
  final pulumi.Input<TimeSeriesFilterRatioResponse> timeSeriesFilterRatio;
  /// A query used to fetch time series with MQL.
  final pulumi.Input<String> timeSeriesQueryLanguage;
  /// The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.
  final pulumi.Input<String> unitOverride;

  /// Creates a new [TimeSeriesQueryResponse].
  /// [opsAnalyticsQuery] Preview: A query used to fetch a time series, category series, or numeric series with SQL. This is a preview feature and may be subject to change before final release.
  /// [outputFullDuration] Optional. If set, Cloud Monitoring will treat the full query duration as the alignment period so that there will be only 1 output value.*Note: This could override the configured alignment period except for the cases where a series of data points are expected, like - XyChart - Scorecard's spark chart
  /// [prometheusQuery] A query used to fetch time series with PromQL.
  /// [timeSeriesFilter] Filter parameters to fetch time series.
  /// [timeSeriesFilterRatio] Parameters to fetch a ratio between two time series filters.
  /// [timeSeriesQueryLanguage] A query used to fetch time series with MQL.
  /// [unitOverride] The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.
  TimeSeriesQueryResponse({
    required this.opsAnalyticsQuery,
    required this.outputFullDuration,
    required this.prometheusQuery,
    required this.timeSeriesFilter,
    required this.timeSeriesFilterRatio,
    required this.timeSeriesQueryLanguage,
    required this.unitOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opsAnalyticsQuery': pulumi.Input.mapInputValue<OpsAnalyticsQueryResponse, Map<String, dynamic>>(opsAnalyticsQuery, (value) => value.toMap()),
      'outputFullDuration': outputFullDuration,
      'prometheusQuery': prometheusQuery,
      'timeSeriesFilter': pulumi.Input.mapInputValue<TimeSeriesFilterResponse, Map<String, dynamic>>(timeSeriesFilter, (value) => value.toMap()),
      'timeSeriesFilterRatio': pulumi.Input.mapInputValue<TimeSeriesFilterRatioResponse, Map<String, dynamic>>(timeSeriesFilterRatio, (value) => value.toMap()),
      'timeSeriesQueryLanguage': timeSeriesQueryLanguage,
      'unitOverride': unitOverride,
    };
  }

  factory TimeSeriesQueryResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesQueryResponse(
      opsAnalyticsQuery: (OpsAnalyticsQueryResponse.fromMap((map['opsAnalyticsQuery'] as Map).cast<String, dynamic>())).input(),
      outputFullDuration: (map['outputFullDuration'] as bool).input(),
      prometheusQuery: (map['prometheusQuery'] as String).input(),
      timeSeriesFilter: (TimeSeriesFilterResponse.fromMap((map['timeSeriesFilter'] as Map).cast<String, dynamic>())).input(),
      timeSeriesFilterRatio: (TimeSeriesFilterRatioResponse.fromMap((map['timeSeriesFilterRatio'] as Map).cast<String, dynamic>())).input(),
      timeSeriesQueryLanguage: (map['timeSeriesQueryLanguage'] as String).input(),
      unitOverride: (map['unitOverride'] as String).input(),
    );
  }
}

