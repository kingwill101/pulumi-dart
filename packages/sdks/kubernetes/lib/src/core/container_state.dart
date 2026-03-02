// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_state_running.dart';
import 'container_state_terminated.dart';
import 'container_state_waiting.dart';

/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
class ContainerState {
  /// Details about a running container
  final pulumi.Input<ContainerStateRunning>? running;
  /// Details about a terminated container
  final pulumi.Input<ContainerStateTerminated>? terminated;
  /// Details about a waiting container
  final pulumi.Input<ContainerStateWaiting>? waiting;

  /// Creates a new [ContainerState].
  /// [running] Details about a running container
  /// [terminated] Details about a terminated container
  /// [waiting] Details about a waiting container
  ContainerState({
    this.running,
    this.terminated,
    this.waiting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'running': ?pulumi.Input.mapOptionalInputValue<ContainerStateRunning, Map<String, dynamic>>(running, (value) => value.toMap()),
      'terminated': ?pulumi.Input.mapOptionalInputValue<ContainerStateTerminated, Map<String, dynamic>>(terminated, (value) => value.toMap()),
      'waiting': ?pulumi.Input.mapOptionalInputValue<ContainerStateWaiting, Map<String, dynamic>>(waiting, (value) => value.toMap()),
    };
  }

  factory ContainerState.fromMap(Map<String, dynamic> map) {
    return ContainerState(
      running: map['running'] == null ? null : (ContainerStateRunning.fromMap((map['running'] as Map).cast<String, dynamic>())).input(),
      terminated: map['terminated'] == null ? null : (ContainerStateTerminated.fromMap((map['terminated'] as Map).cast<String, dynamic>())).input(),
      waiting: map['waiting'] == null ? null : (ContainerStateWaiting.fromMap((map['waiting'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

