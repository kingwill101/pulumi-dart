// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A storage location within Google cloud storage (GCS).
class GoogleCloudStorageResponse {
  /// The path to a directory in GCS that will eventually contain the results for this test. The requesting user must have write access on the bucket in the supplied path.
  final pulumi.Input<String> gcsPath;

  /// Creates a new [GoogleCloudStorageResponse].
  /// [gcsPath] The path to a directory in GCS that will eventually contain the results for this test. The requesting user must have write access on the bucket in the supplied path.
  const GoogleCloudStorageResponse({
    required this.gcsPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsPath': gcsPath,
    };
  }

  factory GoogleCloudStorageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudStorageResponse(
      gcsPath: pulumi.Input.fromValue(map['gcsPath'] as String),
    );
  }
}
