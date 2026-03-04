// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution using a private Cloud Build pool.
class PrivatePoolResponse {
  /// Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String> artifactStorage;

  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  final pulumi.Input<String> serviceAccount;

  /// Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/locations/{location}/workerPools/{pool}`.
  final pulumi.Input<String> workerPool;

  /// Creates a new [PrivatePoolResponse].
  /// [artifactStorage] Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  /// [workerPool] Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/locations/{location}/workerPools/{pool}`.
  PrivatePoolResponse({
    required this.artifactStorage,
    required this.serviceAccount,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': artifactStorage,
      'serviceAccount': serviceAccount,
      'workerPool': workerPool,
    };
  }

  factory PrivatePoolResponse.fromMap(Map<String, dynamic> map) {
    return PrivatePoolResponse(
      artifactStorage: pulumi.Input.fromValue(map['artifactStorage'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      workerPool: pulumi.Input.fromValue(map['workerPool'] as String),
    );
  }
}
