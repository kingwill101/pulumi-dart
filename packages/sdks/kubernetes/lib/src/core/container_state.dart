// ignore_for_file: unused_element, unnecessary_cast

import 'container_state_running.dart';
import 'container_state_terminated.dart';
import 'container_state_waiting.dart';

/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
class ContainerState {
  /// Details about a running container
  final ContainerStateRunning? running;
  /// Details about a terminated container
  final ContainerStateTerminated? terminated;
  /// Details about a waiting container
  final ContainerStateWaiting? waiting;

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
      'running': ?running == null ? null : running!.toMap(),
      'terminated': ?terminated == null ? null : terminated!.toMap(),
      'waiting': ?waiting == null ? null : waiting!.toMap(),
    };
  }

  factory ContainerState.fromMap(Map<String, dynamic> map) {
    return ContainerState(
      running: map['running'] == null ? null : ContainerStateRunning.fromMap((map['running'] as Map).cast<String, dynamic>()),
      terminated: map['terminated'] == null ? null : ContainerStateTerminated.fromMap((map['terminated'] as Map).cast<String, dynamic>()),
      waiting: map['waiting'] == null ? null : ContainerStateWaiting.fromMap((map['waiting'] as Map).cast<String, dynamic>()),
    );
  }
}

