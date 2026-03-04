// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a File connector used by the job.
class FileIODetailsResponse {
  /// File Pattern used to access files by the connector.
  final pulumi.Input<String> filePattern;

  /// Creates a new [FileIODetailsResponse].
  /// [filePattern] File Pattern used to access files by the connector.
  FileIODetailsResponse({required this.filePattern});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filePattern': filePattern};
  }

  factory FileIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return FileIODetailsResponse(
      filePattern: pulumi.Input.fromValue(map['filePattern'] as String),
    );
  }
}
