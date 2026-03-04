// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_archive_response_status.dart';

/// Information about the AML file system archive
class AmlFilesystemArchiveResponse {
  /// Lustre file system path to archive relative to the file system root.  Specify '/' to archive all modified data.
  final pulumi.Input<String> filesystemPath;

  /// The status of the archive
  final pulumi.Input<AmlFilesystemArchiveResponseStatus> status;

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
      'status':
          pulumi.Input.mapInputValue<
            AmlFilesystemArchiveResponseStatus,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory AmlFilesystemArchiveResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemArchiveResponse(
      filesystemPath: pulumi.Input.fromValue(map['filesystemPath'] as String),
      status: pulumi.Input.fromValue(
        AmlFilesystemArchiveResponseStatus.fromMap(
          (map['status']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
