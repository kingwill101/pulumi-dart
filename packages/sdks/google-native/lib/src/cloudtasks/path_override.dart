// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PathOverride. Path message defines path override for HTTP targets.
class PathOverride {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final pulumi.Input<String>? path;

  /// Creates a new [PathOverride].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  PathOverride({this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': ?path};
  }

  factory PathOverride.fromMap(Map<String, dynamic> map) {
    return PathOverride(
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
