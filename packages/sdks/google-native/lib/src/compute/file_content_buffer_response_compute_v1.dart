// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileContentBufferResponseComputeV1 {
  /// The raw content in the secure keys file.
  final pulumi.Input<String> content;
  /// The file type of source file.
  final pulumi.Input<String> fileType;

  /// Creates a new [FileContentBufferResponseComputeV1].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  const FileContentBufferResponseComputeV1({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fileType': fileType,
    };
  }

  factory FileContentBufferResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return FileContentBufferResponseComputeV1(
      content: pulumi.Input.fromValue(map['content'] as String),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
    );
  }
}

