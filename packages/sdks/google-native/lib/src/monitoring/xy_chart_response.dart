// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'axis_response.dart';
import 'chart_options_response.dart';
import 'data_set_response.dart';
import 'threshold_response.dart';

/// A chart that displays data on a 2D (X and Y axes) plane.
class XyChartResponse {
  /// Display options for the chart.
  final pulumi.Input<ChartOptionsResponse> chartOptions;

  /// The data displayed in this chart.
  final pulumi.Input<List<DataSetResponse>> dataSets;

  /// Threshold lines drawn horizontally across the chart.
  final pulumi.Input<List<ThresholdResponse>> thresholds;

  /// The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  final pulumi.Input<String> timeshiftDuration;

  /// The properties applied to the x-axis.
  final pulumi.Input<AxisResponse> xAxis;

  /// The properties applied to the y2-axis.
  final pulumi.Input<AxisResponse> y2Axis;

  /// The properties applied to the y-axis.
  final pulumi.Input<AxisResponse> yAxis;

  /// Creates a new [XyChartResponse].
  /// [chartOptions] Display options for the chart.
  /// [dataSets] The data displayed in this chart.
  /// [thresholds] Threshold lines drawn horizontally across the chart.
  /// [timeshiftDuration] The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.
  /// [xAxis] The properties applied to the x-axis.
  /// [y2Axis] The properties applied to the y2-axis.
  /// [yAxis] The properties applied to the y-axis.
  XyChartResponse({
    required this.chartOptions,
    required this.dataSets,
    required this.thresholds,
    required this.timeshiftDuration,
    required this.xAxis,
    required this.y2Axis,
    required this.yAxis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartOptions':
          pulumi.Input.mapInputValue<
            ChartOptionsResponse,
            Map<String, dynamic>
          >(chartOptions, (value) => value.toMap()),
      'dataSets':
          pulumi.Input.mapInputValue<
            List<DataSetResponse>,
            List<Map<String, dynamic>>
          >(
            dataSets,
            (value) =>
                pulumi.Input.encodeList<DataSetResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'thresholds':
          pulumi.Input.mapInputValue<
            List<ThresholdResponse>,
            List<Map<String, dynamic>>
          >(
            thresholds,
            (value) =>
                pulumi.Input.encodeList<
                  ThresholdResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeshiftDuration': timeshiftDuration,
      'xAxis': pulumi.Input.mapInputValue<AxisResponse, Map<String, dynamic>>(
        xAxis,
        (value) => value.toMap(),
      ),
      'y2Axis': pulumi.Input.mapInputValue<AxisResponse, Map<String, dynamic>>(
        y2Axis,
        (value) => value.toMap(),
      ),
      'yAxis': pulumi.Input.mapInputValue<AxisResponse, Map<String, dynamic>>(
        yAxis,
        (value) => value.toMap(),
      ),
    };
  }

  factory XyChartResponse.fromMap(Map<String, dynamic> map) {
    return XyChartResponse(
      chartOptions: pulumi.Input.fromValue(
        ChartOptionsResponse.fromMap(
          (map['chartOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataSets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DataSetResponse>(
          map['dataSets']!,
          (value) =>
              DataSetResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      thresholds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ThresholdResponse>(
          map['thresholds']!,
          (value) =>
              ThresholdResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      timeshiftDuration: pulumi.Input.fromValue(
        map['timeshiftDuration'] as String,
      ),
      xAxis: pulumi.Input.fromValue(
        AxisResponse.fromMap((map['xAxis']! as Map).cast<String, dynamic>()),
      ),
      y2Axis: pulumi.Input.fromValue(
        AxisResponse.fromMap((map['y2Axis']! as Map).cast<String, dynamic>()),
      ),
      yAxis: pulumi.Input.fromValue(
        AxisResponse.fromMap((map['yAxis']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
