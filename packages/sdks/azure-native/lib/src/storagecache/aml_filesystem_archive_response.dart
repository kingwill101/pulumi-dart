// ignore_for_file: unused_element, unnecessary_cast

import 'aml_filesystem_archive_response_status.dart';

/// Information about the AML file system archive
class AmlFilesystemArchiveResponse {
  /// Lustre file system path to archive relative to the file system root.  Specify '/' to archive all modified data.
  final String filesystemPath;
  /// The status of the archive
  final AmlFilesystemArchiveResponseStatus status;

  /// Creates a new [AmlFilesystemArchiveResponse].
  /// [filesystemPath] Lustre file system path to archive relative to the file system root.  Specify '/' to archive all modified data.
  /// [status] The status of the archive
  AmlFilesystemArchiveResponse({
    required this.filesystemPath,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystemPath': filesystemPath,
      'status': status.toMap(),
    };
  }

  factory AmlFilesystemArchiveResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemArchiveResponse(
      filesystemPath: map['filesystemPath'] as String,
      status: AmlFilesystemArchiveResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

