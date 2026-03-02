// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v1_get_dashboard_args_doc}
/// Arguments for getDashboard.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v1_get_dashboard_args_doc}
class GetDashboardArgs {
  final pulumi.Input<String> dashboardId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDashboardArgs].
  /// [dashboardId] Required.
  /// [project] Optional.
  GetDashboardArgs({
    required this.dashboardId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardId': dashboardId,
      'project': ?project,
    };
  }

  factory GetDashboardArgs.fromMap(Map<String, dynamic> map) {
    return GetDashboardArgs(
      dashboardId: (map['dashboardId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

