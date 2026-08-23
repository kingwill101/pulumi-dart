// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_pool_response.dart';
import 'private_pool_response.dart';

/// Configuration of the environment to use when calling Skaffold.
class ExecutionConfigResponse {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String> artifactStorage;
  /// Optional. Use default Cloud Build pool.
  final pulumi.Input<DefaultPoolResponse> defaultPool;
  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final pulumi.Input<String> executionTimeout;
  /// Optional. Use private Cloud Build pool.
  final pulumi.Input<PrivatePoolResponse> privatePool;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final pulumi.Input<String> serviceAccount;
  /// Usages when this configuration should be applied.
  final pulumi.Input<List<String>> usages;
  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final pulumi.Input<String> workerPool;

  /// Creates a new [ExecutionConfigResponse].
  /// [artifactStorage] Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [defaultPool] Optional. Use default Cloud Build pool.
  /// [executionTimeout] Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  /// [privatePool] Optional. Use private Cloud Build pool.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  /// [usages] Usages when this configuration should be applied.
  /// [workerPool] Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  const ExecutionConfigResponse({
    required this.artifactStorage,
    required this.defaultPool,
    required this.executionTimeout,
    required this.privatePool,
    required this.serviceAccount,
    required this.usages,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': artifactStorage,
      'defaultPool': pulumi.Input.mapInputValue<DefaultPoolResponse, Map<String, dynamic>>(defaultPool, (value) => value.toMap()),
      'executionTimeout': executionTimeout,
      'privatePool': pulumi.Input.mapInputValue<PrivatePoolResponse, Map<String, dynamic>>(privatePool, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'usages': usages,
      'workerPool': workerPool,
    };
  }

  factory ExecutionConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionConfigResponse(
      artifactStorage: pulumi.Input.fromValue(map['artifactStorage'] as String),
      defaultPool: pulumi.Input.fromValue(DefaultPoolResponse.fromMap((map['defaultPool']! as Map).cast<String, dynamic>())),
      executionTimeout: pulumi.Input.fromValue(map['executionTimeout'] as String),
      privatePool: pulumi.Input.fromValue(PrivatePoolResponse.fromMap((map['privatePool']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      usages: pulumi.Input.fromValue((map['usages'] as List).cast<String>()),
      workerPool: pulumi.Input.fromValue(map['workerPool'] as String),
    );
  }
}
