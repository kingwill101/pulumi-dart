// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting {
  /// Possible values are: `RENDER_TYPE_UNSPECIFIED`, `RENDER_TYPE_TEXT`, `RENDER_TYPE_ICON`, `RENDER_TYPE_ICON_AND_TEXT`.
  final pulumi.Input<String>? columnRenderType;
  /// (Optional)
  final pulumi.Input<String>? field;

  /// Creates a new [DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting].
  /// [columnRenderType] Possible values are: `RENDER_TYPE_UNSPECIFIED`, `RENDER_TYPE_TEXT`, `RENDER_TYPE_ICON`, `RENDER_TYPE_ICON_AND_TEXT`.
  /// [field] (Optional)
  const DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting({
    this.columnRenderType,
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnRenderType': ?columnRenderType,
      'field': ?field,
    };
  }

  factory DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting(
      columnRenderType: (() { final guardedValue = map['columnRenderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
