// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_import_data_file_args_doc}
/// Arguments for getImportDataFile.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_import_data_file_args_doc}
class GetImportDataFileArgs {
  final pulumi.Input<String> importDataFileId;
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImportDataFileArgs].
  /// [importDataFileId] Required.
  /// [importJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetImportDataFileArgs({
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

  factory GetImportDataFileArgs.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileArgs(
      importDataFileId: pulumi.Input.fromValue(map['importDataFileId'] as String),
      importJobId: pulumi.Input.fromValue(map['importJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
