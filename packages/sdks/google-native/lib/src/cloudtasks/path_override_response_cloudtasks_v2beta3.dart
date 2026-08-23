// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideResponseCloudtasksV2beta3 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final pulumi.Input<String> path;

  /// Creates a new [PathOverrideResponseCloudtasksV2beta3].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  const PathOverrideResponseCloudtasksV2beta3({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory PathOverrideResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return PathOverrideResponseCloudtasksV2beta3(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
