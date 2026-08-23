// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'barrier.dart';
import 'container.dart';
import 'environment.dart';
import 'script.dart';

/// Runnable describes instructions for executing a specific script or container as part of a Task.
class Runnable {
  /// By default, after a Runnable fails, no further Runnable are executed. This flag indicates that this Runnable must be run even if the Task has already failed. This is useful for Runnables that copy output files off of the VM or for debugging. The always_run flag does not override the Task's overall max_run_duration. If the max_run_duration has expired then no further Runnables will execute, not even always_run Runnables.
  final pulumi.Input<bool>? alwaysRun;
  /// This flag allows a Runnable to continue running in the background while the Task executes subsequent Runnables. This is useful to provide services to other Runnables (or to provide debugging support tools like SSH servers).
  final pulumi.Input<bool>? background;
  /// Barrier runnable.
  final pulumi.Input<Barrier>? barrier;
  /// Container runnable.
  final pulumi.Input<Container>? container;
  /// Optional. DisplayName is an optional field that can be provided by the caller. If provided, it will be used in logs and other outputs to identify the script, making it easier for users to understand the logs. If not provided the index of the runnable will be used for outputs.
  final pulumi.Input<String>? displayName;
  /// Environment variables for this Runnable (overrides variables set for the whole Task or TaskGroup).
  final pulumi.Input<Environment>? environment;
  /// Normally, a non-zero exit status causes the Task to fail. This flag allows execution of other Runnables to continue instead.
  final pulumi.Input<bool>? ignoreExitStatus;
  /// Labels for this Runnable.
  final pulumi.Input<Map<String, String>>? labels;
  /// Script runnable.
  final pulumi.Input<Script>? script;
  /// Timeout for this Runnable.
  final pulumi.Input<String>? timeout;

  /// Creates a new [Runnable].
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
  const Runnable({
    this.alwaysRun,
    this.background,
    this.barrier,
    this.container,
    this.displayName,
    this.environment,
    this.ignoreExitStatus,
    this.labels,
    this.script,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysRun': ?alwaysRun,
      'background': ?background,
      'barrier': ?pulumi.Input.mapOptionalInputValue<Barrier, Map<String, dynamic>>(barrier, (value) => value.toMap()),
      'container': ?pulumi.Input.mapOptionalInputValue<Container, Map<String, dynamic>>(container, (value) => value.toMap()),
      'displayName': ?displayName,
      'environment': ?pulumi.Input.mapOptionalInputValue<Environment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'ignoreExitStatus': ?ignoreExitStatus,
      'labels': ?labels,
      'script': ?pulumi.Input.mapOptionalInputValue<Script, Map<String, dynamic>>(script, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory Runnable.fromMap(Map<String, dynamic> map) {
    return Runnable(
      alwaysRun: (() { final guardedValue = map['alwaysRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      background: (() { final guardedValue = map['background']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      barrier: (() { final guardedValue = map['barrier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Barrier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Container.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Environment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreExitStatus: (() { final guardedValue = map['ignoreExitStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Script.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
