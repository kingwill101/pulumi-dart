// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileContentBufferResponseComputeBeta {
  /// The raw content in the secure keys file.
  final pulumi.Input<String> content;

  /// The file type of source file.
  final pulumi.Input<String> fileType;

  /// Creates a new [FileContentBufferResponseComputeBeta].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferResponseComputeBeta({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'fileType': fileType};
  }

  factory FileContentBufferResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FileContentBufferResponseComputeBeta(
      content: pulumi.Input.fromValue(map['content'] as String),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
    );
  }
}
