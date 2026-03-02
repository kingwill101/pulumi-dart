// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A lightweight description of a file.
class ApigatewayApiConfigFile {
  /// The bytes that constitute the file.
  final pulumi.Input<String>? contents;
  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final pulumi.Input<String>? path;

  /// Creates a new [ApigatewayApiConfigFile].
  /// [contents] The bytes that constitute the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  ApigatewayApiConfigFile({
    this.contents,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': ?contents,
      'path': ?path,
    };
  }

  factory ApigatewayApiConfigFile.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigFile(
      contents: map['contents'] == null ? null : (map['contents']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

