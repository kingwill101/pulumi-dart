// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Storage bucket profile.
class GcsProfile {
  /// The Cloud Storage bucket name.
  final pulumi.Input<String> bucket;
  /// The root path inside the Cloud Storage bucket.
  final pulumi.Input<String>? rootPath;

  /// Creates a new [GcsProfile].
  /// [bucket] The Cloud Storage bucket name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  GcsProfile({
    required this.bucket,
    this.rootPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'rootPath': ?rootPath,
    };
  }

  factory GcsProfile.fromMap(Map<String, dynamic> map) {
    return GcsProfile(
      bucket: (map['bucket'] as String).input(),
      rootPath: map['rootPath'] == null ? null : (map['rootPath']! as String).input(),
    );
  }
}

