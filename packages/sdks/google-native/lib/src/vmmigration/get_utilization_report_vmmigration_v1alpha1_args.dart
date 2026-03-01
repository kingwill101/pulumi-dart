// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_utilization_report_vmmigration_v1alpha1_args_doc}
/// Arguments for getUtilizationReport.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_utilization_report_vmmigration_v1alpha1_args_doc}
class GetUtilizationReportVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String> utilizationReportId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetUtilizationReportVmmigrationV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  /// [utilizationReportId] Required.
  /// [view] Optional.
  GetUtilizationReportVmmigrationV1alpha1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sourceId,
    required pulumi.Output<String> utilizationReportId,
    pulumi.Output<String>? view,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceId = pulumi.Input.asInput<String>(sourceId),
      utilizationReportId = pulumi.Input.asInput<String>(utilizationReportId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
      'utilizationReportId': utilizationReportId,
      'view': ?view,
    };
  }

  factory GetUtilizationReportVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetUtilizationReportVmmigrationV1alpha1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
      utilizationReportId: pulumi.Output.create<String>(map['utilizationReportId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

