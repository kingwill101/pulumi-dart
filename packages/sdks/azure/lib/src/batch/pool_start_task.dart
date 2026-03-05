// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_start_task_container.dart';
import 'pool_start_task_resource_file.dart';
import 'pool_start_task_user_identity.dart';

class PoolStartTask {
  /// The command line executed by the start task.
  final pulumi.Input<String> commandLine;
  /// A map of strings (key,value) that represents the environment variables to set in the start task.
  final pulumi.Input<Map<String, String>>? commonEnvironmentProperties;
  /// A `container` block is the settings for the container under which the start task runs as defined below. When this is specified, all directories recursively below the `AZ_BATCH_NODE_ROOT_DIR` (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
  final pulumi.Input<List<PoolStartTaskContainer>>? containers;
  /// One or more `resource_file` blocks that describe the files to be downloaded to a compute node as defined below.
  final pulumi.Input<List<PoolStartTaskResourceFile>>? resourceFiles;
  /// The number of retry count. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit.
  final pulumi.Input<int>? taskRetryMaximum;
  /// A `user_identity` block that describes the user identity under which the start task runs as defined below.
  final pulumi.Input<PoolStartTaskUserIdentity> userIdentity;
  /// A flag that indicates if the Batch pool should wait for the start task to be completed. Default to `false`.
  final pulumi.Input<bool>? waitForSuccess;

  /// Creates a new [PoolStartTask].
  /// [commandLine] The command line executed by the start task.
  /// [commonEnvironmentProperties] A map of strings (key,value) that represents the environment variables to set in the start task.
  /// [containers] A `container` block is the settings for the container under which the start task runs as defined below. When this is specified, all directories recursively below the `AZ_BATCH_NODE_ROOT_DIR` (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
  /// [resourceFiles] One or more `resource_file` blocks that describe the files to be downloaded to a compute node as defined below.
  /// [taskRetryMaximum] The number of retry count. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit.
  /// [userIdentity] A `user_identity` block that describes the user identity under which the start task runs as defined below.
  /// [waitForSuccess] A flag that indicates if the Batch pool should wait for the start task to be completed. Default to `false`.
  PoolStartTask({
    required this.commandLine,
    this.commonEnvironmentProperties,
    this.containers,
    this.resourceFiles,
    this.taskRetryMaximum,
    required this.userIdentity,
    this.waitForSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLine': commandLine,
      'commonEnvironmentProperties': ?commonEnvironmentProperties,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<PoolStartTaskContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<PoolStartTaskContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceFiles': ?pulumi.Input.mapOptionalInputValue<List<PoolStartTaskResourceFile>, List<Map<String, dynamic>>>(resourceFiles, (value) => pulumi.Input.encodeList<PoolStartTaskResourceFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskRetryMaximum': ?taskRetryMaximum,
      'userIdentity': pulumi.Input.mapInputValue<PoolStartTaskUserIdentity, Map<String, dynamic>>(userIdentity, (value) => value.toMap()),
      'waitForSuccess': ?waitForSuccess,
    };
  }

  factory PoolStartTask.fromMap(Map<String, dynamic> map) {
    return PoolStartTask(
      commandLine: pulumi.Input.fromValue(map['commandLine'] as String),
      commonEnvironmentProperties: (() { final guardedValue = map['commonEnvironmentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolStartTaskContainer>(guardedValue, (value) => PoolStartTaskContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceFiles: (() { final guardedValue = map['resourceFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolStartTaskResourceFile>(guardedValue, (value) => PoolStartTaskResourceFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      taskRetryMaximum: (() { final guardedValue = map['taskRetryMaximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      userIdentity: pulumi.Input.fromValue(PoolStartTaskUserIdentity.fromMap((map['userIdentity']! as Map).cast<String, dynamic>())),
      waitForSuccess: (() { final guardedValue = map['waitForSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

