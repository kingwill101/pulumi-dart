// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideResponse {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final pulumi.Input<String> path;

  /// Creates a new [PathOverrideResponse].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  PathOverrideResponse({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory PathOverrideResponse.fromMap(Map<String, dynamic> map) {
    return PathOverrideResponse(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

