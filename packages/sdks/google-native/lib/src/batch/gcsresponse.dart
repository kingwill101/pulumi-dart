// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Google Cloud Storage volume.
class GCSResponse {
  /// Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  final pulumi.Input<String> remotePath;

  /// Creates a new [GCSResponse].
  /// [remotePath] Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  const GCSResponse({
    required this.remotePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remotePath': remotePath,
    };
  }

  factory GCSResponse.fromMap(Map<String, dynamic> map) {
    return GCSResponse(
      remotePath: pulumi.Input.fromValue(map['remotePath'] as String),
    );
  }
}
