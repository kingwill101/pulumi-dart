// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueHttpTargetUriOverridePathOverride {
  /// The URI path (e.g., /users/1234). Default is an empty string.
  final pulumi.Input<String>? path;

  /// Creates a new [QueueHttpTargetUriOverridePathOverride].
  /// [path] The URI path (e.g., /users/1234). Default is an empty string.
  const QueueHttpTargetUriOverridePathOverride({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory QueueHttpTargetUriOverridePathOverride.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetUriOverridePathOverride(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

