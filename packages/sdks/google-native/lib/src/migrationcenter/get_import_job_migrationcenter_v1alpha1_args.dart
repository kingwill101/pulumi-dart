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
  GetImportJobMigrationcenterV1alpha1Args({
    required pulumi.Output<String> importJobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      importJobId = pulumi.Input.asInput<String>(importJobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      importJobId: pulumi.Output.create<String>(map['importJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

