// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_table_config_column_render_type_setting.dart';
import 'dashboard_chart_dashboard_chart_visualization_table_config_column_tooltip_setting.dart';

class DashboardChartDashboardChartVisualizationTableConfig {
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting>?>? columnRenderTypeSettings;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting>?>? columnTooltipSettings;
  /// (Optional)
  final pulumi.Input<bool?>? enableTextWrap;

  /// Creates a new [DashboardChartDashboardChartVisualizationTableConfig].
  /// [columnRenderTypeSettings] Structure is documented below.
  /// [columnTooltipSettings] Structure is documented below.
  /// [enableTextWrap] (Optional)
  const DashboardChartDashboardChartVisualizationTableConfig({
    this.columnRenderTypeSettings,
    this.columnTooltipSettings,
    this.enableTextWrap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnRenderTypeSettings': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting>, List<Map<String, dynamic>>>(columnRenderTypeSettings, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columnTooltipSettings': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting>, List<Map<String, dynamic>>>(columnTooltipSettings, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableTextWrap': ?enableTextWrap,
    };
  }

  factory DashboardChartDashboardChartVisualizationTableConfig.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationTableConfig(
      columnRenderTypeSettings: (() { final guardedValue = map['columnRenderTypeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting>(guardedValue, (value) => DashboardChartDashboardChartVisualizationTableConfigColumnRenderTypeSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      columnTooltipSettings: (() { final guardedValue = map['columnTooltipSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting>(guardedValue, (value) => DashboardChartDashboardChartVisualizationTableConfigColumnTooltipSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableTextWrap: (() { final guardedValue = map['enableTextWrap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
