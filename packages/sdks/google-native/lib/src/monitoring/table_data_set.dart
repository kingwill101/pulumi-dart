// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_display_options.dart';
import 'time_series_query.dart';

/// Groups a time series query definition with table options.
class TableDataSet {
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final pulumi.Input<String>? minAlignmentPeriod;
  /// Optional. Table display options for configuring how the table is rendered.
  final pulumi.Input<TableDisplayOptions>? tableDisplayOptions;
  /// Optional. A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value i.e. "${resource.labels.project_id}."
  final pulumi.Input<String>? tableTemplate;
  /// Fields for querying time series data from the Stackdriver metrics API.
  final pulumi.Input<TimeSeriesQuery> timeSeriesQuery;

  /// Creates a new [TableDataSet].
  /// [minAlignmentPeriod] Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  /// [tableDisplayOptions] Optional. Table display options for configuring how the table is rendered.
  /// [tableTemplate] Optional. A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value i.e. "${resource.labels.project_id}."
  /// [timeSeriesQuery] Fields for querying time series data from the Stackdriver metrics API.
  const TableDataSet({
    this.minAlignmentPeriod,
    this.tableDisplayOptions,
    this.tableTemplate,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAlignmentPeriod': ?minAlignmentPeriod,
      'tableDisplayOptions': ?pulumi.Input.mapOptionalInputValue<TableDisplayOptions, Map<String, dynamic>>(tableDisplayOptions, (value) => value.toMap()),
      'tableTemplate': ?tableTemplate,
      'timeSeriesQuery': pulumi.Input.mapInputValue<TimeSeriesQuery, Map<String, dynamic>>(timeSeriesQuery, (value) => value.toMap()),
    };
  }

  factory TableDataSet.fromMap(Map<String, dynamic> map) {
    return TableDataSet(
      minAlignmentPeriod: (() { final guardedValue = map['minAlignmentPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableDisplayOptions: (() { final guardedValue = map['tableDisplayOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableDisplayOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableTemplate: (() { final guardedValue = map['tableTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeSeriesQuery: pulumi.Input.fromValue(TimeSeriesQuery.fromMap((map['timeSeriesQuery']! as Map).cast<String, dynamic>())),
    );
  }
}
