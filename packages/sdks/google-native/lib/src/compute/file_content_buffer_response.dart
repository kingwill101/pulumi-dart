// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileContentBufferResponse {
  /// The raw content in the secure keys file.
  final pulumi.Input<String> content;
  /// The file type of source file.
  final pulumi.Input<String> fileType;

  /// Creates a new [FileContentBufferResponse].
  /// [content] The raw content in the secure keys file.
  /// [fileType] The file type of source file.
  FileContentBufferResponse({
    required this.content,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fileType': fileType,
    };
  }

  factory FileContentBufferResponse.fromMap(Map<String, dynamic> map) {
    return FileContentBufferResponse(
      content: (map['content'] as String).input(),
      fileType: (map['fileType'] as String).input(),
    );
  }
}

