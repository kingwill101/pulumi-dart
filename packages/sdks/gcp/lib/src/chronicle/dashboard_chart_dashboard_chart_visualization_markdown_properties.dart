// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationMarkdownProperties {
  /// (Optional)
  final pulumi.Input<String>? backgroundColor;

  /// Creates a new [DashboardChartDashboardChartVisualizationMarkdownProperties].
  /// [backgroundColor] (Optional)
  const DashboardChartDashboardChartVisualizationMarkdownProperties({
    this.backgroundColor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?backgroundColor,
    };
  }

  factory DashboardChartDashboardChartVisualizationMarkdownProperties.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationMarkdownProperties(
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
