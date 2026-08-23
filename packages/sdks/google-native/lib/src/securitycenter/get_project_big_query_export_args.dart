// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_project_big_query_export_args_doc}
/// Arguments for getProjectBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_project_big_query_export_args_doc}
class GetProjectBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectBigQueryExportArgs].
  /// [bigQueryExportId] Required.
  /// [project] Optional.
  const GetProjectBigQueryExportArgs({
    required this.bigQueryExportId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'project': ?project,
    };
  }

  factory GetProjectBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.fromValue(map['bigQueryExportId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
