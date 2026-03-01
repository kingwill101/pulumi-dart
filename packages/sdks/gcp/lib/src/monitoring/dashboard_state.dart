// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  final pulumi.Input<String>? dashboardJson;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DashboardState].
  /// [dashboardJson] The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  /// [project] The ID of the project in which the resource belongs.
  DashboardState({
    pulumi.Output<String>? dashboardJson,
    pulumi.Output<String>? project,
  }) :
      dashboardJson = pulumi.Input.asOptionalInput<String>(dashboardJson),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardJson': ?dashboardJson,
      'project': ?project,
    };
  }

  factory DashboardState.fromMap(Map<String, dynamic> map) {
    return DashboardState(
      dashboardJson: map['dashboardJson'] == null ? null : pulumi.Output.create<String>(map['dashboardJson'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

