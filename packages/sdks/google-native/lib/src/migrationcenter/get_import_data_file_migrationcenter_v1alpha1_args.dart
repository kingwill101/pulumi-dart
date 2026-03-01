// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_import_data_file_migrationcenter_v1alpha1_args_doc}
/// Arguments for getImportDataFile.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_import_data_file_migrationcenter_v1alpha1_args_doc}
class GetImportDataFileMigrationcenterV1alpha1Args {
  final pulumi.Input<String> importDataFileId;
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImportDataFileMigrationcenterV1alpha1Args].
  /// [importDataFileId] Required.
  /// [importJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetImportDataFileMigrationcenterV1alpha1Args({
    required pulumi.Output<String> importDataFileId,
    required pulumi.Output<String> importJobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      importDataFileId = pulumi.Input.asInput<String>(importDataFileId),
      importJobId = pulumi.Input.asInput<String>(importJobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importDataFileId': importDataFileId,
      'importJobId': importJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetImportDataFileMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileMigrationcenterV1alpha1Args(
      importDataFileId: pulumi.Output.create<String>(map['importDataFileId'] as String),
      importJobId: pulumi.Output.create<String>(map['importJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

