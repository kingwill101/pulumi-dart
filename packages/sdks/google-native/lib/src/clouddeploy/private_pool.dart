// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution using a private Cloud Build pool.
class PrivatePool {
  /// Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String>? artifactStorage;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  final pulumi.Input<String>? serviceAccount;
  /// Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/locations/{location}/workerPools/{pool}`.
  final pulumi.Input<String> workerPool;

  /// Creates a new [PrivatePool].
  /// [artifactStorage] Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  /// [workerPool] Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/locations/{location}/workerPools/{pool}`.
  PrivatePool({
    this.artifactStorage,
    this.serviceAccount,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': ?artifactStorage,
      'serviceAccount': ?serviceAccount,
      'workerPool': workerPool,
    };
  }

  factory PrivatePool.fromMap(Map<String, dynamic> map) {
    return PrivatePool(
      artifactStorage: map['artifactStorage'] == null ? null : (map['artifactStorage']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      workerPool: (map['workerPool'] as String).input(),
    );
  }
}

