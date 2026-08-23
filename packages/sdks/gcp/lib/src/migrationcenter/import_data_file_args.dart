// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_import_data_file_import_data_file_args_doc}
/// The set of arguments for ImportDataFile.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_import_data_file_import_data_file_args_doc}
class ImportDataFileArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  /// Possible values:
  /// IMPORT_JOB_FORMAT_RVTOOLS_XLSX
  /// IMPORT_JOB_FORMAT_RVTOOLS_CSV
  /// IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV
  /// IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV
  /// IMPORT_JOB_FORMAT_STRATOZONE_CSV
  /// IMPORT_JOB_FORMAT_DATABASE_ZIP
  final pulumi.Input<String> format;
  /// The ID of the new data file.
  final pulumi.Input<String> importDataFileId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> importJob;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ImportDataFileArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [format] Possible values:
  /// [importDataFileId] The ID of the new data file.
  /// [importJob] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const ImportDataFileArgs({
    this.deletionPolicy,
    this.displayName,
    required this.format,
    required this.importDataFileId,
    required this.importJob,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'format': format,
      'importDataFileId': importDataFileId,
      'importJob': importJob,
      'location': location,
      'project': ?project,
    };
  }

  factory ImportDataFileArgs.fromMap(Map<String, dynamic> map) {
    return ImportDataFileArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      importDataFileId: pulumi.Input.fromValue(map['importDataFileId'] as String),
      importJob: pulumi.Input.fromValue(map['importJob'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
