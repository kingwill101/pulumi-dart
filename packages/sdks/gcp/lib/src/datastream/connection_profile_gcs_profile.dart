// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileGcsProfile {
  /// The Cloud Storage bucket name.
  final pulumi.Input<String> bucket;

  /// The root path inside the Cloud Storage bucket.
  final pulumi.Input<String>? rootPath;

  /// Creates a new [ConnectionProfileGcsProfile].
  /// [bucket] The Cloud Storage bucket name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  ConnectionProfileGcsProfile({required this.bucket, this.rootPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'rootPath': ?rootPath};
  }

  factory ConnectionProfileGcsProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileGcsProfile(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      rootPath: (() {
        final guardedValue = map['rootPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
