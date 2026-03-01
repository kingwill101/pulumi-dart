// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_report_migrationcenter_v1alpha1_args_doc}
/// Arguments for getReport.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_report_migrationcenter_v1alpha1_args_doc}
class GetReportMigrationcenterV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;
  final pulumi.Input<String> reportId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetReportMigrationcenterV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [reportConfigId] Required.
  /// [reportId] Required.
  /// [view] Optional.
  GetReportMigrationcenterV1alpha1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reportConfigId,
    required pulumi.Output<String> reportId,
    pulumi.Output<String>? view,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      reportConfigId = pulumi.Input.asInput<String>(reportConfigId),
      reportId = pulumi.Input.asInput<String>(reportId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'reportConfigId': reportConfigId,
      'reportId': reportId,
      'view': ?view,
    };
  }

  factory GetReportMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetReportMigrationcenterV1alpha1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reportConfigId: pulumi.Output.create<String>(map['reportConfigId'] as String),
      reportId: pulumi.Output.create<String>(map['reportId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

