// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_report_config_migrationcenter_v1alpha1_args_doc}
/// Arguments for getReportConfig.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_report_config_migrationcenter_v1alpha1_args_doc}
class GetReportConfigMigrationcenterV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reportConfigId;

  /// Creates a new [GetReportConfigMigrationcenterV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [reportConfigId] Required.
  GetReportConfigMigrationcenterV1alpha1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reportConfigId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      reportConfigId = pulumi.Input.asInput<String>(reportConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'reportConfigId': reportConfigId,
    };
  }

  factory GetReportConfigMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetReportConfigMigrationcenterV1alpha1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reportConfigId: pulumi.Output.create<String>(map['reportConfigId'] as String),
    );
  }
}

