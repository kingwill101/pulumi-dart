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
    required this.importDataFileId,
    required this.importJobId,
    required this.location,
    this.project,
  });

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
      importDataFileId: (map['importDataFileId'] as String).input(),
      importJobId: (map['importJobId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

