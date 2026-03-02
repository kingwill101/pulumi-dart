// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'axis.dart';
import 'chart_options.dart';
import 'data_set.dart';
import 'threshold.dart';

/// A chart that displays data on a 2D (X and Y axes) plane.
class XyChart {
  /// Display options for the chart.
  final pulumi.Input<ChartOptions>? chartOptions;
  /// The data displayed in this chart.
  final pulumi.Input<List<DataSet>> dataSets;
  /// Threshold lines drawn horizontally across the chart.
  final pulumi.Input<List<Threshold>>? thresholds;
  /// The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  final pulumi.Input<String>? timeshiftDuration;
  /// The properties applied to the x-axis.
  final pulumi.Input<Axis>? xAxis;
  /// The properties applied to the y2-axis.
  final pulumi.Input<Axis>? y2Axis;
  /// The properties applied to the y-axis.
  final pulumi.Input<Axis>? yAxis;

  /// Creates a new [XyChart].
  /// [chartOptions] Display options for the chart.
  /// [dataSets] The data displayed in this chart.
  /// [thresholds] Threshold lines drawn horizontally across the chart.
  /// [timeshiftDuration] The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  /// [xAxis] The properties applied to the x-axis.
  /// [y2Axis] The properties applied to the y2-axis.
  /// [yAxis] The properties applied to the y-axis.
  XyChart({
    this.chartOptions,
    required this.dataSets,
    this.thresholds,
    this.timeshiftDuration,
    this.xAxis,
    this.y2Axis,
    this.yAxis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartOptions': ?pulumi.Input.mapOptionalInputValue<ChartOptions, Map<String, dynamic>>(chartOptions, (value) => value.toMap()),
      'dataSets': pulumi.Input.mapInputValue<List<DataSet>, List<Map<String, dynamic>>>(dataSets, (value) => pulumi.Input.encodeList<DataSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thresholds': ?pulumi.Input.mapOptionalInputValue<List<Threshold>, List<Map<String, dynamic>>>(thresholds, (value) => pulumi.Input.encodeList<Threshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeshiftDuration': ?timeshiftDuration,
      'xAxis': ?pulumi.Input.mapOptionalInputValue<Axis, Map<String, dynamic>>(xAxis, (value) => value.toMap()),
      'y2Axis': ?pulumi.Input.mapOptionalInputValue<Axis, Map<String, dynamic>>(y2Axis, (value) => value.toMap()),
      'yAxis': ?pulumi.Input.mapOptionalInputValue<Axis, Map<String, dynamic>>(yAxis, (value) => value.toMap()),
    };
  }

  factory XyChart.fromMap(Map<String, dynamic> map) {
    return XyChart(
      chartOptions: map['chartOptions'] == null ? null : (ChartOptions.fromMap((map['chartOptions'] as Map).cast<String, dynamic>())).input(),
      dataSets: (pulumi.Input.decodeList<DataSet>(map['dataSets'], (value) => DataSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      thresholds: map['thresholds'] == null ? null : (pulumi.Input.decodeList<Threshold>(map['thresholds'], (value) => Threshold.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeshiftDuration: map['timeshiftDuration'] == null ? null : (map['timeshiftDuration'] as String).input(),
      xAxis: map['xAxis'] == null ? null : (Axis.fromMap((map['xAxis'] as Map).cast<String, dynamic>())).input(),
      y2Axis: map['y2Axis'] == null ? null : (Axis.fromMap((map['y2Axis'] as Map).cast<String, dynamic>())).input(),
      yAxis: map['yAxis'] == null ? null : (Axis.fromMap((map['yAxis'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

