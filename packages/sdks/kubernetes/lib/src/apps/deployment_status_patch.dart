// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_condition_patch.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatusPatch {
  /// Total number of available non-terminating pods (ready for at least minReadySeconds) targeted by this deployment.
  final pulumi.Input<int>? availableReplicas;
  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  final pulumi.Input<int>? collisionCount;
  /// Represents the latest available observations of a deployment's current state.
  final pulumi.Input<List<DeploymentConditionPatch>>? conditions;
  /// The generation observed by the deployment controller.
  final pulumi.Input<int>? observedGeneration;
  /// Total number of non-terminating pods targeted by this Deployment with a Ready Condition.
  final pulumi.Input<int>? readyReplicas;
  /// Total number of non-terminating pods targeted by this deployment (their labels match the selector).
  final pulumi.Input<int>? replicas;
  /// Total number of terminating pods targeted by this deployment. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ///
  /// This is a beta field and requires enabling DeploymentReplicaSetTerminatingReplicas feature (enabled by default).
  final pulumi.Input<int>? terminatingReplicas;
  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  final pulumi.Input<int>? unavailableReplicas;
  /// Total number of non-terminating pods targeted by this deployment that have the desired template spec.
  final pulumi.Input<int>? updatedReplicas;

  /// Creates a new [DeploymentStatusPatch].
  /// [availableReplicas] Total number of available non-terminating pods (ready for at least minReadySeconds) targeted by this deployment.
  /// [collisionCount] Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  /// [conditions] Represents the latest available observations of a deployment's current state.
  /// [observedGeneration] The generation observed by the deployment controller.
  /// [readyReplicas] Total number of non-terminating pods targeted by this Deployment with a Ready Condition.
  /// [replicas] Total number of non-terminating pods targeted by this deployment (their labels match the selector).
  /// [terminatingReplicas] Total number of terminating pods targeted by this deployment. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  /// [unavailableReplicas] Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  /// [updatedReplicas] Total number of non-terminating pods targeted by this deployment that have the desired template spec.
  const DeploymentStatusPatch({
    this.availableReplicas,
    this.collisionCount,
    this.conditions,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
    this.terminatingReplicas,
    this.unavailableReplicas,
    this.updatedReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'collisionCount': ?collisionCount,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DeploymentConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DeploymentConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'terminatingReplicas': ?terminatingReplicas,
      'unavailableReplicas': ?unavailableReplicas,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory DeploymentStatusPatch.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusPatch(
      availableReplicas: (() { final guardedValue = map['availableReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collisionCount: (() { final guardedValue = map['collisionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentConditionPatch>(guardedValue, (value) => DeploymentConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readyReplicas: (() { final guardedValue = map['readyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      terminatingReplicas: (() { final guardedValue = map['terminatingReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unavailableReplicas: (() { final guardedValue = map['unavailableReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatedReplicas: (() { final guardedValue = map['updatedReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
