// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Storage bucket profile.
class GcsProfileDatastreamV1alpha1 {
  /// The full project and resource path for Cloud Storage bucket including the name.
  final pulumi.Input<String> bucketName;
  /// The root path inside the Cloud Storage bucket.
  final pulumi.Input<String>? rootPath;

  /// Creates a new [GcsProfileDatastreamV1alpha1].
  /// [bucketName] The full project and resource path for Cloud Storage bucket including the name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  GcsProfileDatastreamV1alpha1({
    required this.bucketName,
    this.rootPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'rootPath': ?rootPath,
    };
  }

  factory GcsProfileDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return GcsProfileDatastreamV1alpha1(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      rootPath: (() { final guardedValue = map['rootPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

