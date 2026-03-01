// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_settings.dart';
import 'table_data_set.dart';
import 'time_series_table_metric_visualization.dart';

/// A table that displays time series data.
class TimeSeriesTable {
  /// Optional. The list of the persistent column settings for the table.
  final List<ColumnSettings>? columnSettings;
  /// The data displayed in this table.
  final List<TableDataSet> dataSets;
  /// Optional. Store rendering strategy
  final TimeSeriesTableMetricVisualization? metricVisualization;

  /// Creates a new [TimeSeriesTable].
  /// [columnSettings] Optional. The list of the persistent column settings for the table.
  /// [dataSets] The data displayed in this table.
  /// [metricVisualization] Optional. Store rendering strategy
  TimeSeriesTable({
    this.columnSettings,
    required this.dataSets,
    this.metricVisualization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnSettings': ?columnSettings == null ? null : pulumi.Input.encodeList<ColumnSettings, Map<String, dynamic>>(columnSettings!, (value) => value.toMap()),
      'dataSets': pulumi.Input.encodeList<TableDataSet, Map<String, dynamic>>(dataSets, (value) => value.toMap()),
      'metricVisualization': ?metricVisualization == null ? null : metricVisualization!.value,
    };
  }

  factory TimeSeriesTable.fromMap(Map<String, dynamic> map) {
    return TimeSeriesTable(
      columnSettings: map['columnSettings'] == null ? null : pulumi.Input.decodeList<ColumnSettings>(map['columnSettings'], (value) => ColumnSettings.fromMap((value as Map).cast<String, dynamic>())),
      dataSets: pulumi.Input.decodeList<TableDataSet>(map['dataSets'], (value) => TableDataSet.fromMap((value as Map).cast<String, dynamic>())),
      metricVisualization: map['metricVisualization'] == null ? null : TimeSeriesTableMetricVisualization.fromValue(map['metricVisualization'] as String),
    );
  }
}

