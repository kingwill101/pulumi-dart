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
  GetImportDataFileArgs({
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

  factory GetImportDataFileArgs.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileArgs(
      importDataFileId: pulumi.Output.create<String>(map['importDataFileId'] as String),
      importJobId: pulumi.Output.create<String>(map['importJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

