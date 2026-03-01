// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_set_condition_patch.dart';

/// DaemonSetStatus represents the current status of a daemon set.
class DaemonSetStatusPatch {
  /// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final int? collisionCount;
  /// Represents the latest available observations of a DaemonSet's current state.
  final List<DaemonSetConditionPatch>? conditions;
  /// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final int? currentNumberScheduled;
  /// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final int? desiredNumberScheduled;
  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  final int? numberAvailable;
  /// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  final int? numberMisscheduled;
  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
  final int? numberReady;
  /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  final int? numberUnavailable;
  /// The most recent generation observed by the daemon set controller.
  final int? observedGeneration;
  /// The total number of nodes that are running updated daemon pod
  final int? updatedNumberScheduled;

  /// Creates a new [DaemonSetStatusPatch].
  /// [collisionCount] Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  /// [conditions] Represents the latest available observations of a DaemonSet's current state.
  /// [currentNumberScheduled] The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  /// [desiredNumberScheduled] The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  /// [numberAvailable] The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  /// [numberMisscheduled] The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  /// [numberReady] The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
  /// [numberUnavailable] The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  /// [observedGeneration] The most recent generation observed by the daemon set controller.
  /// [updatedNumberScheduled] The total number of nodes that are running updated daemon pod
  DaemonSetStatusPatch({
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
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<DaemonSetConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
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
      collisionCount: map['collisionCount'] == null ? null : map['collisionCount'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<DaemonSetConditionPatch>(map['conditions'], (value) => DaemonSetConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      currentNumberScheduled: map['currentNumberScheduled'] == null ? null : map['currentNumberScheduled'] as int,
      desiredNumberScheduled: map['desiredNumberScheduled'] == null ? null : map['desiredNumberScheduled'] as int,
      numberAvailable: map['numberAvailable'] == null ? null : map['numberAvailable'] as int,
      numberMisscheduled: map['numberMisscheduled'] == null ? null : map['numberMisscheduled'] as int,
      numberReady: map['numberReady'] == null ? null : map['numberReady'] as int,
      numberUnavailable: map['numberUnavailable'] == null ? null : map['numberUnavailable'] as int,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      updatedNumberScheduled: map['updatedNumberScheduled'] == null ? null : map['updatedNumberScheduled'] as int,
    );
  }
}

