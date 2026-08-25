// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  /// The representation of an existing dashboard can be found by using the [API Explorer](https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards/get)
  ///
  /// &gt; **Warning:** Because this is represented as a JSON string, Terraform doesn't have underlying information to know
  /// which fields in the string have defaults. To prevent permanent diffs from default values, Terraform will attempt to
  /// suppress diffs where the value is returned in the JSON string but doesn't exist in the configuration. Consequently,
  /// legitmate remove-only diffs will also be suppressed. For Terraform to detect the diff, key removals must also be
  /// accompanied by a non-removal change (trivial or not).
  ///
  /// - - -
  final pulumi.Input<String?>? dashboardJson;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DashboardState].
  /// [dashboardJson] The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [project] The ID of the project in which the resource belongs.
  const DashboardState({
    this.dashboardJson,
    this.deletionPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardJson': ?dashboardJson,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
    };
  }

  factory DashboardState.fromMap(Map<String, dynamic> map) {
    return DashboardState(
      dashboardJson: (() { final guardedValue = map['dashboardJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
