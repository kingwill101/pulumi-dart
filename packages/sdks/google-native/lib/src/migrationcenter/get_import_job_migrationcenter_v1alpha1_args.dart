// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_import_job_migrationcenter_v1alpha1_args_doc}
/// Arguments for getImportJob.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_import_job_migrationcenter_v1alpha1_args_doc}
class GetImportJobMigrationcenterV1alpha1Args {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetImportJobMigrationcenterV1alpha1Args].
  /// [importJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetImportJobMigrationcenterV1alpha1Args({
    required this.importJobId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importJobId': importJobId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetImportJobMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetImportJobMigrationcenterV1alpha1Args(
      importJobId: pulumi.Input.fromValue(map['importJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
