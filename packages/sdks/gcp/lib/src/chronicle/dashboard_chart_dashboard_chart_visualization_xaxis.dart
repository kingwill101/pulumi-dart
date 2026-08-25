// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationXAxis {
  /// Possible values are: `VALUE`, `CATEGORY`, `TIME`, `LOG`.
  final pulumi.Input<String?>? axisType;
  /// (Optional)
  final pulumi.Input<String?>? displayName;
  /// (Optional)
  final pulumi.Input<int?>? max;
  /// (Optional)
  final pulumi.Input<int?>? min;

  /// Creates a new [DashboardChartDashboardChartVisualizationXAxis].
  /// [axisType] Possible values are: `VALUE`, `CATEGORY`, `TIME`, `LOG`.
  /// [displayName] (Optional)
  /// [max] (Optional)
  /// [min] (Optional)
  const DashboardChartDashboardChartVisualizationXAxis({
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

  factory DashboardChartDashboardChartVisualizationXAxis.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationXAxis(
      axisType: (() { final guardedValue = map['axisType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
