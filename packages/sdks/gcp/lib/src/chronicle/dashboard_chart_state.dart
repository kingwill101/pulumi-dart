// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_chart_layout.dart';
import 'dashboard_chart_dashboard_chart.dart';
import 'dashboard_chart_dashboard_query.dart';

/// Input properties used for looking up and filtering DashboardChart resources.
class DashboardChartState {
  /// The unique identifier of the chart, automatically extracted from the full resource name.
  final pulumi.Input<String?>? chartId;
  /// The layout of this chart within the NativeDashboard.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartChartLayout?>? chartLayout;
  /// Core configuration details for the DashboardChart.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChart?>? dashboardChart;
  /// The complete specification of the query for this chart. This includes the raw query string, execution parameters (like time windows), and server-generated metadata.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardQuery?>? dashboardQuery;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the Chronicle instance.
  final pulumi.Input<String?>? instance;
  /// The location of the Chronicle instance.
  final pulumi.Input<String?>? location;
  /// The full resource name of the DashboardChart.
  final pulumi.Input<String?>? name;
  /// The parent NativeDashboard resource name, formatted as projects/{project}/locations/{location}/instances/{instance}/nativeDashboards/{dashboard_id}
  final pulumi.Input<String?>? nativeDashboard;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DashboardChartState].
  /// [chartId] The unique identifier of the chart, automatically extracted from the full resource name.
  /// [chartLayout] The layout of this chart within the NativeDashboard.
  /// [dashboardChart] Core configuration details for the DashboardChart.
  /// [dashboardQuery] The complete specification of the query for this chart. This includes the raw query string, execution parameters (like time windows), and server-generated metadata.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The ID of the Chronicle instance.
  /// [location] The location of the Chronicle instance.
  /// [name] The full resource name of the DashboardChart.
  /// [nativeDashboard] The parent NativeDashboard resource name, formatted as projects/{project}/locations/{location}/instances/{instance}/nativeDashboards/{dashboard_id}
  /// [project] The ID of the project in which the resource belongs.
  const DashboardChartState({
    this.chartId,
    this.chartLayout,
    this.dashboardChart,
    this.dashboardQuery,
    this.deletionPolicy,
    this.instance,
    this.location,
    this.name,
    this.nativeDashboard,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartId': ?chartId,
      'chartLayout': ?pulumi.Input.mapOptionalInputValue<DashboardChartChartLayout, Map<String, dynamic>>(chartLayout, (value) => value.toMap()),
      'dashboardChart': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChart, Map<String, dynamic>>(dashboardChart, (value) => value.toMap()),
      'dashboardQuery': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardQuery, Map<String, dynamic>>(dashboardQuery, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'nativeDashboard': ?nativeDashboard,
      'project': ?project,
    };
  }

  factory DashboardChartState.fromMap(Map<String, dynamic> map) {
    return DashboardChartState(
      chartId: (() { final guardedValue = map['chartId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chartLayout: (() { final guardedValue = map['chartLayout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartChartLayout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dashboardChart: (() { final guardedValue = map['dashboardChart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChart.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dashboardQuery: (() { final guardedValue = map['dashboardQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nativeDashboard: (() { final guardedValue = map['nativeDashboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
