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
  const GetReportMigrationcenterV1alpha1Args({
    required this.location,
    this.project,
    required this.reportConfigId,
    required this.reportId,
    this.view,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportConfigId: pulumi.Input.fromValue(map['reportConfigId'] as String),
      reportId: pulumi.Input.fromValue(map['reportId'] as String),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
