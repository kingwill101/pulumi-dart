// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FileNote represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileNoteResponseContaineranalysisV1beta1 {
  /// Provide a unique identifier to match analysis information on each specific file in a package
  final pulumi.Input<List<String>> checksum;
  /// This field provides information about the type of file identified
  final pulumi.Input<String> fileType;
  /// Identify the full path and filename that corresponds to the file information in this section
  final pulumi.Input<String> title;

  /// Creates a new [FileNoteResponseContaineranalysisV1beta1].
  /// [checksum] Provide a unique identifier to match analysis information on each specific file in a package
  /// [fileType] This field provides information about the type of file identified
  /// [title] Identify the full path and filename that corresponds to the file information in this section
  FileNoteResponseContaineranalysisV1beta1({
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

  factory FileNoteResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return FileNoteResponseContaineranalysisV1beta1(
      checksum: ((map['checksum'] as List).cast<String>()).input(),
      fileType: (map['fileType'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

