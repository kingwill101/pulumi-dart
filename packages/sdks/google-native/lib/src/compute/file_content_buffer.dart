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
      'fileType': ?pulumi.Input.mapOptionalInputValue<FileContentBufferFileType, String>(fileType, (value) => value.value),
    };
  }

  factory FileContentBuffer.fromMap(Map<String, dynamic> map) {
    return FileContentBuffer(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      fileType: map['fileType'] == null ? null : (FileContentBufferFileType.fromValue(map['fileType']! as String)).input(),
    );
  }
}

