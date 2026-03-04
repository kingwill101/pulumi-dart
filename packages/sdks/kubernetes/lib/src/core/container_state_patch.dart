// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_state_running_patch.dart';
import 'container_state_terminated_patch.dart';
import 'container_state_waiting_patch.dart';

/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
class ContainerStatePatch {
  /// Details about a running container
  final pulumi.Input<ContainerStateRunningPatch>? running;

  /// Details about a terminated container
  final pulumi.Input<ContainerStateTerminatedPatch>? terminated;

  /// Details about a waiting container
  final pulumi.Input<ContainerStateWaitingPatch>? waiting;

  /// Creates a new [ContainerStatePatch].
  /// [running] Details about a running container
  /// [terminated] Details about a terminated container
  /// [waiting] Details about a waiting container
  ContainerStatePatch({this.running, this.terminated, this.waiting});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'running':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerStateRunningPatch,
            Map<String, dynamic>
          >(running, (value) => value.toMap()),
      'terminated':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerStateTerminatedPatch,
            Map<String, dynamic>
          >(terminated, (value) => value.toMap()),
      'waiting':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerStateWaitingPatch,
            Map<String, dynamic>
          >(waiting, (value) => value.toMap()),
    };
  }

  factory ContainerStatePatch.fromMap(Map<String, dynamic> map) {
    return ContainerStatePatch(
      running: (() {
        final guardedValue = map['running'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerStateRunningPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      terminated: (() {
        final guardedValue = map['terminated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerStateTerminatedPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      waiting: (() {
        final guardedValue = map['waiting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerStateWaitingPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
