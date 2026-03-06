// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverrideCloudtasksV2beta3 {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final pulumi.Input<String>? path;

  /// Creates a new [PathOverrideCloudtasksV2beta3].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  const PathOverrideCloudtasksV2beta3({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory PathOverrideCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return PathOverrideCloudtasksV2beta3(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

