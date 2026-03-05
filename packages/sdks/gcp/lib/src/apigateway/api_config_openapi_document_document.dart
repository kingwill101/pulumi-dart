// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiConfigOpenapiDocumentDocument {
  /// Base64 encoded content of the file.
  final pulumi.Input<String> contents;
  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final pulumi.Input<String> path;

  /// Creates a new [ApiConfigOpenapiDocumentDocument].
  /// [contents] Base64 encoded content of the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  ApiConfigOpenapiDocumentDocument({
    required this.contents,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': contents,
      'path': path,
    };
  }

  factory ApiConfigOpenapiDocumentDocument.fromMap(Map<String, dynamic> map) {
    return ApiConfigOpenapiDocumentDocument(
      contents: pulumi.Input.fromValue(map['contents'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

