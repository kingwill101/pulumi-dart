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
  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
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
  /// [numberReady] The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
  /// [numberUnavailable] The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  /// [observedGeneration] The most recent generation observed by the daemon set controller.
  /// [updatedNumberScheduled] The total number of nodes that are running updated daemon pod
  DaemonSetStatus({
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
      collisionCount: map['collisionCount'] == null ? null : (map['collisionCount'] as int).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<DaemonSetCondition>(map['conditions'], (value) => DaemonSetCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      currentNumberScheduled: (map['currentNumberScheduled'] as int).input(),
      desiredNumberScheduled: (map['desiredNumberScheduled'] as int).input(),
      numberAvailable: map['numberAvailable'] == null ? null : (map['numberAvailable'] as int).input(),
      numberMisscheduled: (map['numberMisscheduled'] as int).input(),
      numberReady: (map['numberReady'] as int).input(),
      numberUnavailable: map['numberUnavailable'] == null ? null : (map['numberUnavailable'] as int).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      updatedNumberScheduled: map['updatedNumberScheduled'] == null ? null : (map['updatedNumberScheduled'] as int).input(),
    );
  }
}

