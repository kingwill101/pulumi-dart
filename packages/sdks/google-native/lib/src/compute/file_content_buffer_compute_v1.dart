// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_file_type_compute_v1.dart';

class FileContentBufferComputeV1 {
  /// The raw content in the secure keys file.
  final pulumi.Input<String>? content;
  /// The file type of source file.
  final pulumi.Input<FileContentBufferFileTypeComputeV1>? fileType;

  /// Creates a new [FileContentBufferComputeV1].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferComputeV1({
    this.content,
    this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'fileType': ?pulumi.Input.mapOptionalInputValue<FileContentBufferFileTypeComputeV1, String>(fileType, (value) => value.value),
    };
  }

  factory FileContentBufferComputeV1.fromMap(Map<String, dynamic> map) {
    return FileContentBufferComputeV1(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      fileType: map['fileType'] == null ? null : (FileContentBufferFileTypeComputeV1.fromValue(map['fileType'] as String)).input(),
    );
  }
}

