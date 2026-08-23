// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_drill_down_config_left_drill_down.dart';
import 'dashboard_chart_dashboard_chart_drill_down_config_right_drill_down.dart';

class DashboardChartDashboardChartDrillDownConfig {
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartDrillDownConfigLeftDrillDown>>? leftDrillDowns;
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartDrillDownConfigRightDrillDown>>? rightDrillDowns;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfig].
  /// [leftDrillDowns] Structure is documented below.
  /// [rightDrillDowns] Structure is documented below.
  const DashboardChartDashboardChartDrillDownConfig({
    this.leftDrillDowns,
    this.rightDrillDowns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leftDrillDowns': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartDrillDownConfigLeftDrillDown>, List<Map<String, dynamic>>>(leftDrillDowns, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartDrillDownConfigLeftDrillDown, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rightDrillDowns': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartDrillDownConfigRightDrillDown>, List<Map<String, dynamic>>>(rightDrillDowns, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartDrillDownConfigRightDrillDown, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardChartDashboardChartDrillDownConfig.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfig(
      leftDrillDowns: (() { final guardedValue = map['leftDrillDowns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartDrillDownConfigLeftDrillDown>(guardedValue, (value) => DashboardChartDashboardChartDrillDownConfigLeftDrillDown.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rightDrillDowns: (() { final guardedValue = map['rightDrillDowns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartDrillDownConfigRightDrillDown>(guardedValue, (value) => DashboardChartDashboardChartDrillDownConfigRightDrillDown.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
