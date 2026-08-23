// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_pool.dart';
import 'execution_config_usages_item.dart';
import 'private_pool.dart';

/// Configuration of the environment to use when calling Skaffold.
class ExecutionConfig {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String>? artifactStorage;
  /// Optional. Use default Cloud Build pool.
  final pulumi.Input<DefaultPool>? defaultPool;
  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final pulumi.Input<String>? executionTimeout;
  /// Optional. Use private Cloud Build pool.
  final pulumi.Input<PrivatePool>? privatePool;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final pulumi.Input<String>? serviceAccount;
  /// Usages when this configuration should be applied.
  final pulumi.Input<List<ExecutionConfigUsagesItem>> usages;
  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final pulumi.Input<String>? workerPool;

  /// Creates a new [ExecutionConfig].
  /// [artifactStorage] Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [defaultPool] Optional. Use default Cloud Build pool.
  /// [executionTimeout] Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  /// [privatePool] Optional. Use private Cloud Build pool.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  /// [usages] Usages when this configuration should be applied.
  /// [workerPool] Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  const ExecutionConfig({
    this.artifactStorage,
    this.defaultPool,
    this.executionTimeout,
    this.privatePool,
    this.serviceAccount,
    required this.usages,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': ?artifactStorage,
      'defaultPool': ?pulumi.Input.mapOptionalInputValue<DefaultPool, Map<String, dynamic>>(defaultPool, (value) => value.toMap()),
      'executionTimeout': ?executionTimeout,
      'privatePool': ?pulumi.Input.mapOptionalInputValue<PrivatePool, Map<String, dynamic>>(privatePool, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'usages': pulumi.Input.mapInputValue<List<ExecutionConfigUsagesItem>, List<String>>(usages, (value) => pulumi.Input.encodeList<ExecutionConfigUsagesItem, String>(value, (value) => value.wireValue)),
      'workerPool': ?workerPool,
    };
  }

  factory ExecutionConfig.fromMap(Map<String, dynamic> map) {
    return ExecutionConfig(
      artifactStorage: (() { final guardedValue = map['artifactStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPool: (() { final guardedValue = map['defaultPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionTimeout: (() { final guardedValue = map['executionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privatePool: (() { final guardedValue = map['privatePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivatePool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usages: pulumi.Input.fromValue(pulumi.Input.decodeList<ExecutionConfigUsagesItem>(map['usages']!, (value) => ExecutionConfigUsagesItem.fromValue(value as String))),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
