// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A lightweight description of a file.
class ApigatewayApiConfigFileApigatewayV1beta {
  /// The bytes that constitute the file.
  final pulumi.Input<String>? contents;
  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final pulumi.Input<String>? path;

  /// Creates a new [ApigatewayApiConfigFileApigatewayV1beta].
  /// [contents] The bytes that constitute the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  const ApigatewayApiConfigFileApigatewayV1beta({
    this.contents,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': ?contents,
      'path': ?path,
    };
  }

  factory ApigatewayApiConfigFileApigatewayV1beta.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigFileApigatewayV1beta(
      contents: (() { final guardedValue = map['contents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
