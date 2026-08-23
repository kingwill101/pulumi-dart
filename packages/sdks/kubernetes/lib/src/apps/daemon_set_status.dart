// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_set_condition.dart';

/// DaemonSetStatus represents the current status of a daemon set.
class DaemonSetStatus {
  /// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final pulumi.Input<int>? collisionCount;
  /// Represents the latest available observations of a DaemonSet's current state.
  final pulumi.Input<List<DaemonSetCondition>>? conditions;
  /// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final pulumi.Input<int> currentNumberScheduled;
  /// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final pulumi.Input<int> desiredNumberScheduled;
  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  final pulumi.Input<int>? numberAvailable;
  /// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final pulumi.Input<int> numberMisscheduled;
  /// numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
  final pulumi.Input<int> numberReady;
  /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  final pulumi.Input<int>? numberUnavailable;
  /// The most recent generation observed by the daemon set controller.
  final pulumi.Input<int>? observedGeneration;
  /// The total number of nodes that are running updated daemon pod
  final pulumi.Input<int>? updatedNumberScheduled;

  /// Creates a new [DaemonSetStatus].
  /// [collisionCount] Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  /// [conditions] Represents the latest available observations of a DaemonSet's current state.
  /// [currentNumberScheduled] The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  /// [desiredNumberScheduled] The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  /// [numberAvailable] The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  /// [numberMisscheduled] The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  /// [numberReady] numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
  /// [numberUnavailable] The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  /// [observedGeneration] The most recent generation observed by the daemon set controller.
  /// [updatedNumberScheduled] The total number of nodes that are running updated daemon pod
  const DaemonSetStatus({
    this.collisionCount,
    this.conditions,
    required this.currentNumberScheduled,
    required this.desiredNumberScheduled,
    this.numberAvailable,
    required this.numberMisscheduled,
    required this.numberReady,
    this.numberUnavailable,
    this.observedGeneration,
    this.updatedNumberScheduled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collisionCount': ?collisionCount,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DaemonSetCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DaemonSetCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentNumberScheduled': currentNumberScheduled,
      'desiredNumberScheduled': desiredNumberScheduled,
      'numberAvailable': ?numberAvailable,
      'numberMisscheduled': numberMisscheduled,
      'numberReady': numberReady,
      'numberUnavailable': ?numberUnavailable,
      'observedGeneration': ?observedGeneration,
      'updatedNumberScheduled': ?updatedNumberScheduled,
    };
  }

  factory DaemonSetStatus.fromMap(Map<String, dynamic> map) {
    return DaemonSetStatus(
      collisionCount: (() { final guardedValue = map['collisionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonSetCondition>(guardedValue, (value) => DaemonSetCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      currentNumberScheduled: pulumi.Input.fromValue(map['currentNumberScheduled'] as int),
      desiredNumberScheduled: pulumi.Input.fromValue(map['desiredNumberScheduled'] as int),
      numberAvailable: (() { final guardedValue = map['numberAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberMisscheduled: pulumi.Input.fromValue(map['numberMisscheduled'] as int),
      numberReady: pulumi.Input.fromValue(map['numberReady'] as int),
      numberUnavailable: (() { final guardedValue = map['numberUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatedNumberScheduled: (() { final guardedValue = map['updatedNumberScheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
