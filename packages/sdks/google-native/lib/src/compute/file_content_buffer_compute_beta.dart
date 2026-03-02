// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_file_type_compute_beta.dart';

class FileContentBufferComputeBeta {
  /// The raw content in the secure keys file.
  final pulumi.Input<String>? content;
  /// The file type of source file.
  final pulumi.Input<FileContentBufferFileTypeComputeBeta>? fileType;

  /// Creates a new [FileContentBufferComputeBeta].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferComputeBeta({
    this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'fileType': ?pulumi.Input.mapOptionalInputValue<FileContentBufferFileTypeComputeBeta, String>(fileType, (value) => value.value),
    };
  }

  factory FileContentBufferComputeBeta.fromMap(Map<String, dynamic> map) {
    return FileContentBufferComputeBeta(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      fileType: map['fileType'] == null ? null : (FileContentBufferFileTypeComputeBeta.fromValue(map['fileType'] as String)).input(),
    );
  }
}

