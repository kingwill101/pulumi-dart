// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_import_job_args_doc}
/// Arguments for getImportJob.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_import_job_args_doc}
class GetImportJobArgs {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetImportJobArgs].
  /// [importJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetImportJobArgs({
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

  factory GetImportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs(
      importJobId: pulumi.Input.fromValue(map['importJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
