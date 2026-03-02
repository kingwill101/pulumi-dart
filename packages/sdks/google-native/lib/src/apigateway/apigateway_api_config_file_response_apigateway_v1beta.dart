// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A lightweight description of a file.
class ApigatewayApiConfigFileResponseApigatewayV1beta {
  /// The bytes that constitute the file.
  final pulumi.Input<String> contents;
  /// The file path (full or relative path). This is typically the path of the file when it is uploaded.
  final pulumi.Input<String> path;

  /// Creates a new [ApigatewayApiConfigFileResponseApigatewayV1beta].
  /// [contents] The bytes that constitute the file.
  /// [path] The file path (full or relative path). This is typically the path of the file when it is uploaded.
  ApigatewayApiConfigFileResponseApigatewayV1beta({
    required this.contents,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': contents,
      'path': path,
    };
  }

  factory ApigatewayApiConfigFileResponseApigatewayV1beta.fromMap(Map<String, dynamic> map) {
    return ApigatewayApiConfigFileResponseApigatewayV1beta(
      contents: (map['contents'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

