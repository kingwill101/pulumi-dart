// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_execution_config_default_pool.dart';
import 'target_execution_config_private_pool.dart';

class TargetExecutionConfig {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String?>? artifactStorage;
  /// Optional. Use default Cloud Build pool.
  final pulumi.Input<TargetExecutionConfigDefaultPool?>? defaultPool;
  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final pulumi.Input<String?>? executionTimeout;
  /// Optional. Use private Cloud Build pool.
  final pulumi.Input<TargetExecutionConfigPrivatePool?>? privatePool;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final pulumi.Input<String?>? serviceAccount;
  /// Required. Usages when this configuration should be applied.
  final pulumi.Input<List<String>> usages;
  /// Optional. If true, additional logging will be enabled when running builds in this execution environment.
  final pulumi.Input<bool?>? verbose;
  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final pulumi.Input<String?>? workerPool;

  /// Creates a new [TargetExecutionConfig].
  /// [artifactStorage] Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [defaultPool] Optional. Use default Cloud Build pool.
  /// [executionTimeout] Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  /// [privatePool] Optional. Use private Cloud Build pool.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  /// [usages] Required. Usages when this configuration should be applied.
  /// [verbose] Optional. If true, additional logging will be enabled when running builds in this execution environment.
  /// [workerPool] Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  const TargetExecutionConfig({
    this.artifactStorage,
    this.defaultPool,
    this.executionTimeout,
    this.privatePool,
    this.serviceAccount,
    required this.usages,
    this.verbose,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': ?artifactStorage,
      'defaultPool': ?pulumi.Input.mapOptionalInputValue<TargetExecutionConfigDefaultPool, Map<String, dynamic>>(defaultPool, (value) => value.toMap()),
      'executionTimeout': ?executionTimeout,
      'privatePool': ?pulumi.Input.mapOptionalInputValue<TargetExecutionConfigPrivatePool, Map<String, dynamic>>(privatePool, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'usages': usages,
      'verbose': ?verbose,
      'workerPool': ?workerPool,
    };
  }

  factory TargetExecutionConfig.fromMap(Map<String, dynamic> map) {
    return TargetExecutionConfig(
      artifactStorage: (() { final guardedValue = map['artifactStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPool: (() { final guardedValue = map['defaultPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetExecutionConfigDefaultPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionTimeout: (() { final guardedValue = map['executionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privatePool: (() { final guardedValue = map['privatePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetExecutionConfigPrivatePool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usages: pulumi.Input.fromValue((map['usages'] as List).cast<String>()),
      verbose: (() { final guardedValue = map['verbose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workerPool: (() { final guardedValue = map['workerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
