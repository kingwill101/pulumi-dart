// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery {
  /// (Required)
  final pulumi.Input<String> query;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery].
  /// [query] (Required)
  const DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsQuery(
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
