// ignore_for_file: unused_element, unnecessary_cast

import 'table_display_options.dart';
import 'time_series_query.dart';

/// Groups a time series query definition with table options.
class TableDataSet {
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final String? minAlignmentPeriod;
  /// Optional. Table display options for configuring how the table is rendered.
  final TableDisplayOptions? tableDisplayOptions;
  /// Optional. A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value i.e. "${resource.labels.project_id}."
  final String? tableTemplate;
  /// Fields for querying time series data from the Stackdriver metrics API.
  final TimeSeriesQuery timeSeriesQuery;

  /// Creates a new [TableDataSet].
  /// [minAlignmentPeriod] Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  /// [tableDisplayOptions] Optional. Table display options for configuring how the table is rendered.
  /// [tableTemplate] Optional. A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value i.e. "${resource.labels.project_id}."
  /// [timeSeriesQuery] Fields for querying time series data from the Stackdriver metrics API.
  TableDataSet({
    this.minAlignmentPeriod,
    this.tableDisplayOptions,
    this.tableTemplate,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAlignmentPeriod': ?minAlignmentPeriod,
      'tableDisplayOptions': ?tableDisplayOptions == null ? null : tableDisplayOptions!.toMap(),
      'tableTemplate': ?tableTemplate,
      'timeSeriesQuery': timeSeriesQuery.toMap(),
    };
  }

  factory TableDataSet.fromMap(Map<String, dynamic> map) {
    return TableDataSet(
      minAlignmentPeriod: map['minAlignmentPeriod'] == null ? null : map['minAlignmentPeriod'] as String,
      tableDisplayOptions: map['tableDisplayOptions'] == null ? null : TableDisplayOptions.fromMap((map['tableDisplayOptions'] as Map).cast<String, dynamic>()),
      tableTemplate: map['tableTemplate'] == null ? null : map['tableTemplate'] as String,
      timeSeriesQuery: TimeSeriesQuery.fromMap((map['timeSeriesQuery'] as Map).cast<String, dynamic>()),
    );
  }
}

