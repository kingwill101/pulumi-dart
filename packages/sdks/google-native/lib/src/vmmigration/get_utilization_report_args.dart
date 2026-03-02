// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_utilization_report_args_doc}
/// Arguments for getUtilizationReport.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_utilization_report_args_doc}
class GetUtilizationReportArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String> utilizationReportId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetUtilizationReportArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  /// [utilizationReportId] Required.
  /// [view] Optional.
  GetUtilizationReportArgs({
    required this.location,
    this.project,
    required this.sourceId,
    required this.utilizationReportId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
      'utilizationReportId': utilizationReportId,
      'view': ?view,
    };
  }

  factory GetUtilizationReportArgs.fromMap(Map<String, dynamic> map) {
    return GetUtilizationReportArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      utilizationReportId: (map['utilizationReportId'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
    );
  }
}

