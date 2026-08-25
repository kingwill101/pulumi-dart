// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartChartDatasource {
  /// (Output)
  /// The unique system ID of the query linked to this chart.
  final pulumi.Input<String?>? dashboardQuery;
  /// Name(s) of the datasource used in the chart. Available values include:
  /// 'UDM', 'ENTITY', 'INGESTION_METRICS', 'RULE_DETECTIONS', 'RULESETS',
  /// 'GLOBAL', 'IOC_MATCHES', 'RULES', 'SOAR_CASES', 'SOAR_PLAYBOOKS',
  /// 'SOAR_CASE_HISTORY', 'DATA_TABLE', 'INVESTIGATION', 'INVESTIGATION_FEEDBACK'.
  final pulumi.Input<List<String>?>? dataSources;

  /// Creates a new [DashboardChartDashboardChartChartDatasource].
  /// [dashboardQuery] (Output)
  /// [dataSources] Name(s) of the datasource used in the chart. Available values include:
  const DashboardChartDashboardChartChartDatasource({
    this.dashboardQuery,
    this.dataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardQuery': ?dashboardQuery,
      'dataSources': ?dataSources,
    };
  }

  factory DashboardChartDashboardChartChartDatasource.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartChartDatasource(
      dashboardQuery: (() { final guardedValue = map['dashboardQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
