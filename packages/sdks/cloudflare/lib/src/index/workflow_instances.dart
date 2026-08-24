// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowInstances {
  final pulumi.Input<double?>? complete;
  final pulumi.Input<double?>? errored;
  final pulumi.Input<double?>? paused;
  final pulumi.Input<double?>? queued;
  final pulumi.Input<double?>? rollingBack;
  final pulumi.Input<double?>? running;
  final pulumi.Input<double?>? terminated;
  final pulumi.Input<double?>? waiting;
  final pulumi.Input<double?>? waitingForPause;

  /// Creates a new [WorkflowInstances].
  /// [complete] Optional.
  /// [errored] Optional.
  /// [paused] Optional.
  /// [queued] Optional.
  /// [rollingBack] Optional.
  /// [running] Optional.
  /// [terminated] Optional.
  /// [waiting] Optional.
  /// [waitingForPause] Optional.
  const WorkflowInstances({
    this.complete,
    this.errored,
    this.paused,
    this.queued,
    this.rollingBack,
    this.running,
    this.terminated,
    this.waiting,
    this.waitingForPause,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complete': ?complete,
      'errored': ?errored,
      'paused': ?paused,
      'queued': ?queued,
      'rollingBack': ?rollingBack,
      'running': ?running,
      'terminated': ?terminated,
      'waiting': ?waiting,
      'waitingForPause': ?waitingForPause,
    };
  }

  factory WorkflowInstances.fromMap(Map<String, dynamic> map) {
    return WorkflowInstances(
      complete: (() { final guardedValue = map['complete']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      errored: (() { final guardedValue = map['errored']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      queued: (() { final guardedValue = map['queued']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      rollingBack: (() { final guardedValue = map['rollingBack']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      running: (() { final guardedValue = map['running']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      terminated: (() { final guardedValue = map['terminated']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      waiting: (() { final guardedValue = map['waiting']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      waitingForPause: (() { final guardedValue = map['waitingForPause']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
