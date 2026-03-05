// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'barrier_response.dart';
import 'container_response.dart';
import 'environment_response.dart';
import 'script_response.dart';

/// Runnable describes instructions for executing a specific script or container as part of a Task.
class RunnableResponse {
  /// By default, after a Runnable fails, no further Runnable are executed. This flag indicates that this Runnable must be run even if the Task has already failed. This is useful for Runnables that copy output files off of the VM or for debugging. The always_run flag does not override the Task's overall max_run_duration. If the max_run_duration has expired then no further Runnables will execute, not even always_run Runnables.
  final pulumi.Input<bool> alwaysRun;
  /// This flag allows a Runnable to continue running in the background while the Task executes subsequent Runnables. This is useful to provide services to other Runnables (or to provide debugging support tools like SSH servers).
  final pulumi.Input<bool> background;
  /// Barrier runnable.
  final pulumi.Input<BarrierResponse> barrier;
  /// Container runnable.
  final pulumi.Input<ContainerResponse> container;
  /// Optional. DisplayName is an optional field that can be provided by the caller. If provided, it will be used in logs and other outputs to identify the script, making it easier for users to understand the logs. If not provided the index of the runnable will be used for outputs.
  final pulumi.Input<String> displayName;
  /// Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup).
  final pulumi.Input<EnvironmentResponse> environment;
  /// Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Runnables to continue instead.
  final pulumi.Input<bool> ignoreExitStatus;
  /// Labels for this Runnable.
  final pulumi.Input<Map<String, String>> labels;
  /// Script runnable.
  final pulumi.Input<ScriptResponse> script;
  /// Timeout for this Runnable.
  final pulumi.Input<String> timeout;

  /// Creates a new [RunnableResponse].
  /// [alwaysRun] By default, after a Runnable fails, no further Runnable are executed. This flag indicates that this Runnable must be run even if the Task has already failed. This is useful for Runnables that copy output files off of the VM or for debugging. The always_run flag does not override the Task's overall max_run_duration. If the max_run_duration has expired then no further Runnables will execute, not even always_run Runnables.
  /// [background] This flag allows a Runnable to continue running in the background while the Task executes subsequent Runnables. This is useful to provide services to other Runnables (or to provide debugging support tools like SSH servers).
  /// [barrier] Barrier runnable.
  /// [container] Container runnable.
  /// [displayName] Optional. DisplayName is an optional field that can be provided by the caller. If provided, it will be used in logs and other outputs to identify the script, making it easier for users to understand the logs. If not provided the index of the runnable will be used for outputs.
  /// [environment] Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup).
  /// [ignoreExitStatus] Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Runnables to continue instead.
  /// [labels] Labels for this Runnable.
  /// [script] Script runnable.
  /// [timeout] Timeout for this Runnable.
  RunnableResponse({
    required this.alwaysRun,
    required this.background,
    required this.barrier,
    required this.container,
    required this.displayName,
    required this.environment,
    required this.ignoreExitStatus,
    required this.labels,
    required this.script,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysRun': alwaysRun,
      'background': background,
      'barrier': pulumi.Input.mapInputValue<BarrierResponse, Map<String, dynamic>>(barrier, (value) => value.toMap()),
      'container': pulumi.Input.mapInputValue<ContainerResponse, Map<String, dynamic>>(container, (value) => value.toMap()),
      'displayName': displayName,
      'environment': pulumi.Input.mapInputValue<EnvironmentResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'ignoreExitStatus': ignoreExitStatus,
      'labels': labels,
      'script': pulumi.Input.mapInputValue<ScriptResponse, Map<String, dynamic>>(script, (value) => value.toMap()),
      'timeout': timeout,
    };
  }

  factory RunnableResponse.fromMap(Map<String, dynamic> map) {
    return RunnableResponse(
      alwaysRun: pulumi.Input.fromValue(map['alwaysRun'] as bool),
      background: pulumi.Input.fromValue(map['background'] as bool),
      barrier: pulumi.Input.fromValue(BarrierResponse.fromMap((map['barrier']! as Map).cast<String, dynamic>())),
      container: pulumi.Input.fromValue(ContainerResponse.fromMap((map['container']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      environment: pulumi.Input.fromValue(EnvironmentResponse.fromMap((map['environment']! as Map).cast<String, dynamic>())),
      ignoreExitStatus: pulumi.Input.fromValue(map['ignoreExitStatus'] as bool),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      script: pulumi.Input.fromValue(ScriptResponse.fromMap((map['script']! as Map).cast<String, dynamic>())),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}

