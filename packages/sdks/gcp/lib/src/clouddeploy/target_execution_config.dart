// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetExecutionConfig {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String>? artifactStorage;
  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final pulumi.Input<String>? executionTimeout;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final pulumi.Input<String>? serviceAccount;
  /// Required. Usages when this configuration should be applied.
  final pulumi.Input<List<String>> usages;
  /// Optional. If true, additional logging will be enabled when running builds in this execution environment.
  final pulumi.Input<bool>? verbose;
  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final pulumi.Input<String>? workerPool;

  /// Creates a new [TargetExecutionConfig].
  /// [artifactStorage] Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [executionTimeout] Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  /// [usages] Required. Usages when this configuration should be applied.
  /// [verbose] Optional. If true, additional logging will be enabled when running builds in this execution environment.
  /// [workerPool] Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  TargetExecutionConfig({
    this.artifactStorage,
    this.executionTimeout,
    this.serviceAccount,
    required this.usages,
    this.verbose,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': ?artifactStorage,
      'executionTimeout': ?executionTimeout,
      'serviceAccount': ?serviceAccount,
      'usages': usages,
      'verbose': ?verbose,
      'workerPool': ?workerPool,
    };
  }

  factory TargetExecutionConfig.fromMap(Map<String, dynamic> map) {
    return TargetExecutionConfig(
      artifactStorage: map['artifactStorage'] == null ? null : (map['artifactStorage']! as String).input(),
      executionTimeout: map['executionTimeout'] == null ? null : (map['executionTimeout']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      usages: ((map['usages'] as List).cast<String>()).input(),
      verbose: map['verbose'] == null ? null : (map['verbose']! as bool).input(),
      workerPool: map['workerPool'] == null ? null : (map['workerPool']! as String).input(),
    );
  }
}

