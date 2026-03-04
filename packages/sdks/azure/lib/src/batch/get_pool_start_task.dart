// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_start_task_container.dart';
import 'get_pool_start_task_resource_file.dart';
import 'get_pool_start_task_user_identity.dart';

class GetPoolStartTask {
  /// The command line executed by the start task.
  final pulumi.Input<String> commandLine;

  /// A map of strings (key,value) that represents the environment variables to set in the start task.
  final pulumi.Input<Map<String, String>>? commonEnvironmentProperties;

  /// The settings for the container under which the start task runs.
  final pulumi.Input<List<GetPoolStartTaskContainer>> containers;

  /// One or more `resource_file` blocks that describe the files to be downloaded to a compute node.
  final pulumi.Input<List<GetPoolStartTaskResourceFile>> resourceFiles;

  /// The number of retry count
  final pulumi.Input<int> taskRetryMaximum;

  /// A `user_identity` block that describes the user identity under which the start task runs.
  final pulumi.Input<List<GetPoolStartTaskUserIdentity>> userIdentities;

  /// A flag that indicates if the Batch pool should wait for the start task to be completed.
  final pulumi.Input<bool> waitForSuccess;

  /// Creates a new [GetPoolStartTask].
  /// [commandLine] The command line executed by the start task.
  /// [commonEnvironmentProperties] A map of strings (key,value) that represents the environment variables to set in the start task.
  /// [containers] The settings for the container under which the start task runs.
  /// [resourceFiles] One or more `resource_file` blocks that describe the files to be downloaded to a compute node.
  /// [taskRetryMaximum] The number of retry count
  /// [userIdentities] A `user_identity` block that describes the user identity under which the start task runs.
  /// [waitForSuccess] A flag that indicates if the Batch pool should wait for the start task to be completed.
  GetPoolStartTask({
    required this.commandLine,
    this.commonEnvironmentProperties,
    required this.containers,
    required this.resourceFiles,
    required this.taskRetryMaximum,
    required this.userIdentities,
    required this.waitForSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLine': commandLine,
      'commonEnvironmentProperties': ?commonEnvironmentProperties,
      'containers':
          pulumi.Input.mapInputValue<
            List<GetPoolStartTaskContainer>,
            List<Map<String, dynamic>>
          >(
            containers,
            (value) =>
                pulumi.Input.encodeList<
                  GetPoolStartTaskContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceFiles':
          pulumi.Input.mapInputValue<
            List<GetPoolStartTaskResourceFile>,
            List<Map<String, dynamic>>
          >(
            resourceFiles,
            (value) =>
                pulumi.Input.encodeList<
                  GetPoolStartTaskResourceFile,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'taskRetryMaximum': taskRetryMaximum,
      'userIdentities':
          pulumi.Input.mapInputValue<
            List<GetPoolStartTaskUserIdentity>,
            List<Map<String, dynamic>>
          >(
            userIdentities,
            (value) =>
                pulumi.Input.encodeList<
                  GetPoolStartTaskUserIdentity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'waitForSuccess': waitForSuccess,
    };
  }

  factory GetPoolStartTask.fromMap(Map<String, dynamic> map) {
    return GetPoolStartTask(
      commandLine: pulumi.Input.fromValue(map['commandLine'] as String),
      commonEnvironmentProperties: (() {
        final guardedValue = map['commonEnvironmentProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      containers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPoolStartTaskContainer>(
          map['containers']!,
          (value) => GetPoolStartTaskContainer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resourceFiles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPoolStartTaskResourceFile>(
          map['resourceFiles']!,
          (value) => GetPoolStartTaskResourceFile.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      taskRetryMaximum: pulumi.Input.fromValue(map['taskRetryMaximum'] as int),
      userIdentities: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPoolStartTaskUserIdentity>(
          map['userIdentities']!,
          (value) => GetPoolStartTaskUserIdentity.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      waitForSuccess: pulumi.Input.fromValue(map['waitForSuccess'] as bool),
    );
  }
}
