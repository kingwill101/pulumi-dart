// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ops_analytics_query.dart';
import 'time_series_filter.dart';
import 'time_series_filter_ratio.dart';

/// TimeSeriesQuery collects the set of supported methods for querying time series data from the Stackdriver metrics API.
class TimeSeriesQuery {
  /// Preview: A query used to fetch a time series, category series, or numeric series with SQL. This is a preview feature and may be subject to change before final release.
  final pulumi.Input<OpsAnalyticsQuery>? opsAnalyticsQuery;
  /// Optional. If set, Cloud Monitoring will treat the full query duration as the alignment period so that there will be only 1 output value.*Note: This could override the configured alignment period except for the cases where a series of data points are expected, like - XyChart - Scorecard's spark chart
  final pulumi.Input<bool>? outputFullDuration;
  /// A query used to fetch time series with PromQL.
  final pulumi.Input<String>? prometheusQuery;
  /// Filter parameters to fetch time series.
  final pulumi.Input<TimeSeriesFilter>? timeSeriesFilter;
  /// Parameters to fetch a ratio between two time series filters.
  final pulumi.Input<TimeSeriesFilterRatio>? timeSeriesFilterRatio;
  /// A query used to fetch time series with MQL.
  final pulumi.Input<String>? timeSeriesQueryLanguage;
  /// The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.
  final pulumi.Input<String>? unitOverride;

  /// Creates a new [TimeSeriesQuery].
  /// [opsAnalyticsQuery] Preview: A query used to fetch a time series, category series, or numeric series with SQL. This is a preview feature and may be subject to change before final release.
  /// [outputFullDuration] Optional. If set, Cloud Monitoring will treat the full query duration as the alignment period so that there will be only 1 output value.*Note: This could override the configured alignment period except for the cases where a series of data points are expected, like - XyChart - Scorecard's spark chart
  /// [prometheusQuery] A query used to fetch time series with PromQL.
  /// [timeSeriesFilter] Filter parameters to fetch time series.
  /// [timeSeriesFilterRatio] Parameters to fetch a ratio between two time series filters.
  /// [timeSeriesQueryLanguage] A query used to fetch time series with MQL.
  /// [unitOverride] The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.
  const TimeSeriesQuery({
    this.opsAnalyticsQuery,
    this.outputFullDuration,
    this.prometheusQuery,
    this.timeSeriesFilter,
    this.timeSeriesFilterRatio,
    this.timeSeriesQueryLanguage,
    this.unitOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opsAnalyticsQuery': ?pulumi.Input.mapOptionalInputValue<OpsAnalyticsQuery, Map<String, dynamic>>(opsAnalyticsQuery, (value) => value.toMap()),
      'outputFullDuration': ?outputFullDuration,
      'prometheusQuery': ?prometheusQuery,
      'timeSeriesFilter': ?pulumi.Input.mapOptionalInputValue<TimeSeriesFilter, Map<String, dynamic>>(timeSeriesFilter, (value) => value.toMap()),
      'timeSeriesFilterRatio': ?pulumi.Input.mapOptionalInputValue<TimeSeriesFilterRatio, Map<String, dynamic>>(timeSeriesFilterRatio, (value) => value.toMap()),
      'timeSeriesQueryLanguage': ?timeSeriesQueryLanguage,
      'unitOverride': ?unitOverride,
    };
  }

  factory TimeSeriesQuery.fromMap(Map<String, dynamic> map) {
    return TimeSeriesQuery(
      opsAnalyticsQuery: (() { final guardedValue = map['opsAnalyticsQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpsAnalyticsQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputFullDuration: (() { final guardedValue = map['outputFullDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prometheusQuery: (() { final guardedValue = map['prometheusQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeSeriesFilter: (() { final guardedValue = map['timeSeriesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeSeriesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeSeriesFilterRatio: (() { final guardedValue = map['timeSeriesFilterRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeSeriesFilterRatio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeSeriesQueryLanguage: (() { final guardedValue = map['timeSeriesQueryLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unitOverride: (() { final guardedValue = map['unitOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
