// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationYAxis {
  /// Possible values are: `VALUE`, `CATEGORY`, `TIME`, `LOG`.
  final pulumi.Input<String>? axisType;
  /// (Optional)
  final pulumi.Input<String>? displayName;
  /// (Optional)
  final pulumi.Input<int>? max;
  /// (Optional)
  final pulumi.Input<int>? min;

  /// Creates a new [DashboardChartDashboardChartVisualizationYAxis].
  /// [axisType] Possible values are: `VALUE`, `CATEGORY`, `TIME`, `LOG`.
  /// [displayName] (Optional)
  /// [max] (Optional)
  /// [min] (Optional)
  const DashboardChartDashboardChartVisualizationYAxis({
    this.axisType,
    this.displayName,
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'axisType': ?axisType,
      'displayName': ?displayName,
      'max': ?max,
      'min': ?min,
    };
  }

  factory DashboardChartDashboardChartVisualizationYAxis.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationYAxis(
      axisType: (() { final guardedValue = map['axisType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
