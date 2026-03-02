// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_data_file_format_migrationcenter_v1alpha1.dart';

/// {@template pulumi_migrationcenter_v1alpha1_import_data_file_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for ImportDataFile.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_import_data_file_migrationcenter_v1alpha1_args_doc}
class ImportDataFileMigrationcenterV1alpha1Args {
  /// Optional. User-friendly display name. Maximum length is 256 characters.
  final pulumi.Input<String>? displayName;
  /// The payload format.
  final pulumi.Input<ImportDataFileFormatMigrationcenterV1alpha1> format;
  /// Required. The ID of the new data file.
  final pulumi.Input<String> importDataFileId;
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Information about a file that is uploaded to a storage service.
  final pulumi.Input<Map<String, dynamic>>? uploadFileInfo;

  /// Creates a new [ImportDataFileMigrationcenterV1alpha1Args].
  /// [displayName] Optional. User-friendly display name. Maximum length is 256 characters.
  /// [format] The payload format.
  /// [importDataFileId] Required. The ID of the new data file.
  /// [importJobId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [uploadFileInfo] Information about a file that is uploaded to a storage service.
  ImportDataFileMigrationcenterV1alpha1Args({
    this.displayName,
    required this.format,
    required this.importDataFileId,
    required this.importJobId,
    this.location,
    this.project,
    this.requestId,
    this.uploadFileInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'format': pulumi.Input.mapInputValue<ImportDataFileFormatMigrationcenterV1alpha1, String>(format, (value) => value.value),
      'importDataFileId': importDataFileId,
      'importJobId': importJobId,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'uploadFileInfo': ?uploadFileInfo,
    };
  }

  factory ImportDataFileMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return ImportDataFileMigrationcenterV1alpha1Args(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      format: (ImportDataFileFormatMigrationcenterV1alpha1.fromValue(map['format'] as String)).input(),
      importDataFileId: (map['importDataFileId'] as String).input(),
      importJobId: (map['importJobId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      uploadFileInfo: map['uploadFileInfo'] == null ? null : ((map['uploadFileInfo'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

