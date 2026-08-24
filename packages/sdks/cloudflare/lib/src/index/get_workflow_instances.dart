// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkflowInstances {
  final pulumi.Input<double> complete;
  final pulumi.Input<double> errored;
  final pulumi.Input<double> paused;
  final pulumi.Input<double> queued;
  final pulumi.Input<double> rollingBack;
  final pulumi.Input<double> running;
  final pulumi.Input<double> terminated;
  final pulumi.Input<double> waiting;
  final pulumi.Input<double> waitingForPause;

  /// Creates a new [GetWorkflowInstances].
  /// [complete] Required.
  /// [errored] Required.
  /// [paused] Required.
  /// [queued] Required.
  /// [rollingBack] Required.
  /// [running] Required.
  /// [terminated] Required.
  /// [waiting] Required.
  /// [waitingForPause] Required.
  const GetWorkflowInstances({
    required this.complete,
    required this.errored,
    required this.paused,
    required this.queued,
    required this.rollingBack,
    required this.running,
    required this.terminated,
    required this.waiting,
    required this.waitingForPause,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complete': complete,
      'errored': errored,
      'paused': paused,
      'queued': queued,
      'rollingBack': rollingBack,
      'running': running,
      'terminated': terminated,
      'waiting': waiting,
      'waitingForPause': waitingForPause,
    };
  }

  factory GetWorkflowInstances.fromMap(Map<String, dynamic> map) {
    return GetWorkflowInstances(
      complete: pulumi.Input.fromValue((map['complete'] as num).toDouble()),
      errored: pulumi.Input.fromValue((map['errored'] as num).toDouble()),
      paused: pulumi.Input.fromValue((map['paused'] as num).toDouble()),
      queued: pulumi.Input.fromValue((map['queued'] as num).toDouble()),
      rollingBack: pulumi.Input.fromValue((map['rollingBack'] as num).toDouble()),
      running: pulumi.Input.fromValue((map['running'] as num).toDouble()),
      terminated: pulumi.Input.fromValue((map['terminated'] as num).toDouble()),
      waiting: pulumi.Input.fromValue((map['waiting'] as num).toDouble()),
      waitingForPause: pulumi.Input.fromValue((map['waitingForPause'] as num).toDouble()),
    );
  }
}
