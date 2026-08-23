// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'native_dashboard_chart_chart_layout.dart';

class NativeDashboardChart {
  /// The visual layout parameters of this chart within the dashboard.
  /// Structure is documented below.
  final pulumi.Input<NativeDashboardChartChartLayout>? chartLayout;
  /// The resource name of the associated DashboardChart.
  final pulumi.Input<String>? dashboardChart;
  /// List of dashboard filter IDs applied to this chart.
  final pulumi.Input<List<String>>? filtersIds;

  /// Creates a new [NativeDashboardChart].
  /// [chartLayout] The visual layout parameters of this chart within the dashboard.
  /// [dashboardChart] The resource name of the associated DashboardChart.
  /// [filtersIds] List of dashboard filter IDs applied to this chart.
  const NativeDashboardChart({
    this.chartLayout,
    this.dashboardChart,
    this.filtersIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartLayout': ?pulumi.Input.mapOptionalInputValue<NativeDashboardChartChartLayout, Map<String, dynamic>>(chartLayout, (value) => value.toMap()),
      'dashboardChart': ?dashboardChart,
      'filtersIds': ?filtersIds,
    };
  }

  factory NativeDashboardChart.fromMap(Map<String, dynamic> map) {
    return NativeDashboardChart(
      chartLayout: (() { final guardedValue = map['chartLayout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NativeDashboardChartChartLayout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dashboardChart: (() { final guardedValue = map['dashboardChart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filtersIds: (() { final guardedValue = map['filtersIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
