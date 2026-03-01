// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';

/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
class PodDisruptionBudgetStatus {
  /// Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute
  /// the number of allowed disruptions. Therefore no disruptions are
  /// allowed and the status of the condition will be False.
  /// - InsufficientPods: The number of pods are either at or below the number
  /// required by the PodDisruptionBudget. No disruptions are
  /// allowed and the status of the condition will be False.
  /// - SufficientPods: There are more pods than required by the PodDisruptionBudget.
  /// The condition will be True, and the number of allowed
  /// disruptions are provided by the disruptionsAllowed property.
  final List<Condition>? conditions;
  /// current number of healthy pods
  final int currentHealthy;
  /// minimum desired number of healthy pods
  final int desiredHealthy;
  /// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  final Map<String, String>? disruptedPods;
  /// Number of pod disruptions that are currently allowed.
  final int disruptionsAllowed;
  /// total number of pods counted by this disruption budget
  final int expectedPods;
  /// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  final int? observedGeneration;

  /// Creates a new [PodDisruptionBudgetStatus].
  /// [conditions] Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute
  /// [currentHealthy] current number of healthy pods
  /// [desiredHealthy] minimum desired number of healthy pods
  /// [disruptedPods] DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  /// [disruptionsAllowed] Number of pod disruptions that are currently allowed.
  /// [expectedPods] total number of pods counted by this disruption budget
  /// [observedGeneration] Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  PodDisruptionBudgetStatus({
    this.conditions,
    required this.currentHealthy,
    required this.desiredHealthy,
    this.disruptedPods,
    required this.disruptionsAllowed,
    required this.expectedPods,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<Condition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'currentHealthy': currentHealthy,
      'desiredHealthy': desiredHealthy,
      'disruptedPods': ?disruptedPods,
      'disruptionsAllowed': disruptionsAllowed,
      'expectedPods': expectedPods,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory PodDisruptionBudgetStatus.fromMap(Map<String, dynamic> map) {
    return PodDisruptionBudgetStatus(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>())),
      currentHealthy: map['currentHealthy'] as int,
      desiredHealthy: map['desiredHealthy'] as int,
      disruptedPods: map['disruptedPods'] == null ? null : (map['disruptedPods'] as Map).cast<String, String>(),
      disruptionsAllowed: map['disruptionsAllowed'] as int,
      expectedPods: map['expectedPods'] as int,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
    );
  }
}

