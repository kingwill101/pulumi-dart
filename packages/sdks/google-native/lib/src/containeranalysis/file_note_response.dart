// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FileNote represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileNoteResponse {
  /// Provide a unique identifier to match analysis information on each specific file in a package
  final pulumi.Input<List<String>> checksum;
  /// This field provides information about the type of file identified
  final pulumi.Input<String> fileType;
  /// Identify the full path and filename that corresponds to the file information in this section
  final pulumi.Input<String> title;

  /// Creates a new [FileNoteResponse].
  /// [checksum] Provide a unique identifier to match analysis information on each specific file in a package
  /// [fileType] This field provides information about the type of file identified
  /// [title] Identify the full path and filename that corresponds to the file information in this section
  const FileNoteResponse({
    required this.checksum,
    required this.fileType,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'fileType': fileType,
      'title': title,
    };
  }

  factory FileNoteResponse.fromMap(Map<String, dynamic> map) {
    return FileNoteResponse(
      checksum: pulumi.Input.fromValue((map['checksum'] as List).cast<String>()),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

