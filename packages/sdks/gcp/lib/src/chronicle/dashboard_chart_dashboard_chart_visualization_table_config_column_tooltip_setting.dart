// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting {
  /// (Optional)
  final pulumi.Input<String>? cellTooltipText;
  /// (Required)
  final pulumi.Input<String> field;
  /// (Optional)
  final pulumi.Input<String>? headerTooltipText;

  /// Creates a new [DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting].
  /// [cellTooltipText] (Optional)
  /// [field] (Required)
  /// [headerTooltipText] (Optional)
  const DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting({
    this.cellTooltipText,
    required this.field,
    this.headerTooltipText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cellTooltipText': ?cellTooltipText,
      'field': field,
      'headerTooltipText': ?headerTooltipText,
    };
  }

  factory DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting(
      cellTooltipText: (() { final guardedValue = map['cellTooltipText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
      headerTooltipText: (() { final guardedValue = map['headerTooltipText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
