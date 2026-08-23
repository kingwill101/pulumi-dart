// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesDataLabel {
  /// Whether to show data label.
  final pulumi.Input<bool>? show;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesDataLabel].
  /// [show] Whether to show data label.
  const DashboardChartDashboardChartVisualizationSeriesDataLabel({
    this.show,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': ?show,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesDataLabel.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesDataLabel(
      show: (() { final guardedValue = map['show']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
