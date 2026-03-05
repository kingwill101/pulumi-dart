// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_file_type.dart';

class FileContentBuffer {
  /// The raw content in the secure keys file.
  final pulumi.Input<String>? content;
  /// The file type of source file.
  final pulumi.Input<FileContentBufferFileType>? fileType;

  /// Creates a new [FileContentBuffer].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBuffer({
    this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'fileType': ?pulumi.Input.mapOptionalInputValue<FileContentBufferFileType, String>(fileType, (value) => value.wireValue),
    };
  }

  factory FileContentBuffer.fromMap(Map<String, dynamic> map) {
    return FileContentBuffer(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileContentBufferFileType.fromValue(guardedValue as String)); })(),
    );
  }
}

