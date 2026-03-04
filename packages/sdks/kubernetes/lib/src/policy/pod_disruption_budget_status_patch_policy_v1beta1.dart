// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
class PodDisruptionBudgetStatusPatchPolicyV1beta1 {
  /// current number of healthy pods
  final pulumi.Input<int>? currentHealthy;

  /// minimum desired number of healthy pods
  final pulumi.Input<int>? desiredHealthy;

  /// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  final pulumi.Input<Map<String, String>>? disruptedPods;

  /// Number of pod disruptions that are currently allowed.
  final pulumi.Input<int>? disruptionsAllowed;

  /// total number of pods counted by this disruption budget
  final pulumi.Input<int>? expectedPods;

  /// Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  final pulumi.Input<int>? observedGeneration;

  /// Creates a new [PodDisruptionBudgetStatusPatchPolicyV1beta1].
  /// [currentHealthy] current number of healthy pods
  /// [desiredHealthy] minimum desired number of healthy pods
  /// [disruptedPods] DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  /// [disruptionsAllowed] Number of pod disruptions that are currently allowed.
  /// [expectedPods] total number of pods counted by this disruption budget
  /// [observedGeneration] Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  PodDisruptionBudgetStatusPatchPolicyV1beta1({
    this.currentHealthy,
    this.desiredHealthy,
    this.disruptedPods,
    this.disruptionsAllowed,
    this.expectedPods,
    this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentHealthy': ?currentHealthy,
      'desiredHealthy': ?desiredHealthy,
      'disruptedPods': ?disruptedPods,
      'disruptionsAllowed': ?disruptionsAllowed,
      'expectedPods': ?expectedPods,
      'observedGeneration': ?observedGeneration,
    };
  }

  factory PodDisruptionBudgetStatusPatchPolicyV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PodDisruptionBudgetStatusPatchPolicyV1beta1(
      currentHealthy: (() {
        final guardedValue = map['currentHealthy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      desiredHealthy: (() {
        final guardedValue = map['desiredHealthy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      disruptedPods: (() {
        final guardedValue = map['disruptedPods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      disruptionsAllowed: (() {
        final guardedValue = map['disruptionsAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      expectedPods: (() {
        final guardedValue = map['expectedPods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      observedGeneration: (() {
        final guardedValue = map['observedGeneration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
