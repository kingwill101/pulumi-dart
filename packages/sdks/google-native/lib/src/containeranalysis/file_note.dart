// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_note_file_type.dart';

/// FileNote represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/
class FileNote {
  /// Provide a unique identifier to match analysis information on each specific file in a package
  final pulumi.Input<List<String>>? checksum;
  /// This field provides information about the type of file identified
  final pulumi.Input<FileNoteFileType>? fileType;
  /// Identify the full path and filename that corresponds to the file information in this section
  final pulumi.Input<String>? title;

  /// Creates a new [FileNote].
  /// [checksum] Provide a unique identifier to match analysis information on each specific file in a package
  /// [fileType] This field provides information about the type of file identified
  /// [title] Identify the full path and filename that corresponds to the file information in this section
  FileNote({
    this.checksum,
    this.fileType,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': ?checksum,
      'fileType': ?pulumi.Input.mapOptionalInputValue<FileNoteFileType, String>(fileType, (value) => value.value),
      'title': ?title,
    };
  }

  factory FileNote.fromMap(Map<String, dynamic> map) {
    return FileNote(
      checksum: map['checksum'] == null ? null : ((map['checksum'] as List).cast<String>()).input(),
      fileType: map['fileType'] == null ? null : (FileNoteFileType.fromValue(map['fileType'] as String)).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

