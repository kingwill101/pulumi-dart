// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_set_condition_patch.dart';

/// DaemonSetStatus represents the current status of a daemon set.
class DaemonSetStatusPatch {
  /// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final pulumi.Input<int>? collisionCount;
  /// Represents the latest available observations of a DaemonSet's current state.
  final pulumi.Input<List<DaemonSetConditionPatch>>? conditions;
  /// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final pulumi.Input<int>? currentNumberScheduled;
  /// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final pulumi.Input<int>? desiredNumberScheduled;
  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  final pulumi.Input<int>? numberAvailable;
  /// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final pulumi.Input<int>? numberMisscheduled;
  /// numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
  final pulumi.Input<int>? numberReady;
  /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  final pulumi.Input<int>? numberUnavailable;
  /// The most recent generation observed by the daemon set controller.
  final pulumi.Input<int>? observedGeneration;
  /// The total number of nodes that are running updated daemon pod
  final pulumi.Input<int>? updatedNumberScheduled;

  /// Creates a new [DaemonSetStatusPatch].
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
  const DaemonSetStatusPatch({
    this.collisionCount,
    this.conditions,
    this.currentNumberScheduled,
    this.desiredNumberScheduled,
    this.numberAvailable,
    this.numberMisscheduled,
    this.numberReady,
    this.numberUnavailable,
    this.observedGeneration,
    this.updatedNumberScheduled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collisionCount': ?collisionCount,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DaemonSetConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DaemonSetConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentNumberScheduled': ?currentNumberScheduled,
      'desiredNumberScheduled': ?desiredNumberScheduled,
      'numberAvailable': ?numberAvailable,
      'numberMisscheduled': ?numberMisscheduled,
      'numberReady': ?numberReady,
      'numberUnavailable': ?numberUnavailable,
      'observedGeneration': ?observedGeneration,
      'updatedNumberScheduled': ?updatedNumberScheduled,
    };
  }

  factory DaemonSetStatusPatch.fromMap(Map<String, dynamic> map) {
    return DaemonSetStatusPatch(
      collisionCount: (() { final guardedValue = map['collisionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonSetConditionPatch>(guardedValue, (value) => DaemonSetConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      currentNumberScheduled: (() { final guardedValue = map['currentNumberScheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      desiredNumberScheduled: (() { final guardedValue = map['desiredNumberScheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberAvailable: (() { final guardedValue = map['numberAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberMisscheduled: (() { final guardedValue = map['numberMisscheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberReady: (() { final guardedValue = map['numberReady']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberUnavailable: (() { final guardedValue = map['numberUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatedNumberScheduled: (() { final guardedValue = map['updatedNumberScheduled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

