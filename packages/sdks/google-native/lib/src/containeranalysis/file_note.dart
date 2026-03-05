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
      'fileType': ?pulumi.Input.mapOptionalInputValue<FileNoteFileType, String>(fileType, (value) => value.wireValue),
      'title': ?title,
    };
  }

  factory FileNote.fromMap(Map<String, dynamic> map) {
    return FileNote(
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileNoteFileType.fromValue(guardedValue as String)); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

