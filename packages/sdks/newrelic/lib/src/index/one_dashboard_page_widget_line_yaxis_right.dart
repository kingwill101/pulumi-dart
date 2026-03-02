// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetLineYAxisRight {
  /// Minimum value of the range to be specified with the Y-Axis on the right of the line widget.
  final pulumi.Input<double>? yAxisRightMax;
  /// , `y_axis_right_max` - (Optional) Attributes which help specify a range of minimum and maximum values, which adjust the right Y axis to display the data within the specified minimum and maximum value for the axis.
  final pulumi.Input<double>? yAxisRightMin;
  /// (Optional) An attribute which takes a list of strings, specifying a selection of series' displayed in the line chart to be adjusted against the values of the right Y-axis.
  final pulumi.Input<List<String>>? yAxisRightSeries;
  /// (Optional) An attribute that specifies if the values on the graph to be rendered need to be fit to scale, or printed within the specified range from `y_axis_right_min` (or 0 if it is not defined) to `y_axis_right_max`. Use `y_axis_right_zero = true` with a combination of `y_axis_right_min` and `y_axis_right_max` to render values from 0 or the specified minimum to the maximum, and `y_axis_right_zero = false` to fit the graph to scale.
  final pulumi.Input<bool>? yAxisRightZero;

  /// Creates a new [OneDashboardPageWidgetLineYAxisRight].
  /// [yAxisRightMax] Minimum value of the range to be specified with the Y-Axis on the right of the line widget.
  /// [yAxisRightMin] , `y_axis_right_max` - (Optional) Attributes which help specify a range of minimum and maximum values, which adjust the right Y axis to display the data within the specified minimum and maximum value for the axis.
  /// [yAxisRightSeries] (Optional) An attribute which takes a list of strings, specifying a selection of series' displayed in the line chart to be adjusted against the values of the right Y-axis.
  /// [yAxisRightZero] (Optional) An attribute that specifies if the values on the graph to be rendered need to be fit to scale, or printed within the specified range from `y_axis_right_min` (or 0 if it is not defined) to `y_axis_right_max`. Use `y_axis_right_zero = true` with a combination of `y_axis_right_min` and `y_axis_right_max` to render values from 0 or the specified minimum to the maximum, and `y_axis_right_zero = false` to fit the graph to scale.
  OneDashboardPageWidgetLineYAxisRight({
    this.yAxisRightMax,
    this.yAxisRightMin,
    this.yAxisRightSeries,
    this.yAxisRightZero,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'yAxisRightMax': ?yAxisRightMax,
      'yAxisRightMin': ?yAxisRightMin,
      'yAxisRightSeries': ?yAxisRightSeries,
      'yAxisRightZero': ?yAxisRightZero,
    };
  }

  factory OneDashboardPageWidgetLineYAxisRight.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLineYAxisRight(
      yAxisRightMax: map['yAxisRightMax'] == null ? null : (map['yAxisRightMax'] as double).input(),
      yAxisRightMin: map['yAxisRightMin'] == null ? null : (map['yAxisRightMin'] as double).input(),
      yAxisRightSeries: map['yAxisRightSeries'] == null ? null : ((map['yAxisRightSeries'] as List).cast<String>()).input(),
      yAxisRightZero: map['yAxisRightZero'] == null ? null : (map['yAxisRightZero'] as bool).input(),
    );
  }
}

