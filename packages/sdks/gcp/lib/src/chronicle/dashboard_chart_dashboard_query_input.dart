// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_query_input_relative_time.dart';
import 'dashboard_chart_dashboard_query_input_time_window.dart';

class DashboardChartDashboardQueryInput {
  /// Relative time range.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardQueryInputRelativeTime?>? relativeTime;
  /// Specific start and end times.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardQueryInputTimeWindow?>? timeWindow;

  /// Creates a new [DashboardChartDashboardQueryInput].
  /// [relativeTime] Relative time range.
  /// [timeWindow] Specific start and end times.
  const DashboardChartDashboardQueryInput({
    this.relativeTime,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativeTime': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardQueryInputRelativeTime, Map<String, dynamic>>(relativeTime, (value) => value.toMap()),
      'timeWindow': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardQueryInputTimeWindow, Map<String, dynamic>>(timeWindow, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardQueryInput.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardQueryInput(
      relativeTime: (() { final guardedValue = map['relativeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardQueryInputRelativeTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeWindow: (() { final guardedValue = map['timeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardQueryInputTimeWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
