// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Storage bucket profile.
class GcsProfileResponseDatastreamV1alpha1 {
  /// The full project and resource path for Cloud Storage bucket including the name.
  final pulumi.Input<String> bucketName;
  /// The root path inside the Cloud Storage bucket.
  final pulumi.Input<String> rootPath;

  /// Creates a new [GcsProfileResponseDatastreamV1alpha1].
  /// [bucketName] The full project and resource path for Cloud Storage bucket including the name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  const GcsProfileResponseDatastreamV1alpha1({
    required this.bucketName,
    required this.rootPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'rootPath': rootPath,
    };
  }

  factory GcsProfileResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return GcsProfileResponseDatastreamV1alpha1(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      rootPath: pulumi.Input.fromValue(map['rootPath'] as String),
    );
  }
}

