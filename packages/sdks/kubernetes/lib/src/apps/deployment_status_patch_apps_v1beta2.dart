// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_condition_patch_apps_v1beta2.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatusPatchAppsV1beta2 {
  /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  final int? availableReplicas;
  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  final int? collisionCount;
  /// Represents the latest available observations of a deployment's current state.
  final List<DeploymentConditionPatchAppsV1beta2>? conditions;
  /// The generation observed by the deployment controller.
  final int? observedGeneration;
  /// Total number of ready pods targeted by this deployment.
  final int? readyReplicas;
  /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  final int? replicas;
  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  final int? unavailableReplicas;
  /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  final int? updatedReplicas;

  /// Creates a new [DeploymentStatusPatchAppsV1beta2].
  /// [availableReplicas] Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  /// [collisionCount] Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  /// [conditions] Represents the latest available observations of a deployment's current state.
  /// [observedGeneration] The generation observed by the deployment controller.
  /// [readyReplicas] Total number of ready pods targeted by this deployment.
  /// [replicas] Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  /// [unavailableReplicas] Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  /// [updatedReplicas] Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  DeploymentStatusPatchAppsV1beta2({
    this.availableReplicas,
    this.collisionCount,
    this.conditions,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
    this.unavailableReplicas,
    this.updatedReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'collisionCount': ?collisionCount,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<DeploymentConditionPatchAppsV1beta2, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'unavailableReplicas': ?unavailableReplicas,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory DeploymentStatusPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusPatchAppsV1beta2(
      availableReplicas: map['availableReplicas'] == null ? null : map['availableReplicas'] as int,
      collisionCount: map['collisionCount'] == null ? null : map['collisionCount'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<DeploymentConditionPatchAppsV1beta2>(map['conditions'], (value) => DeploymentConditionPatchAppsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      unavailableReplicas: map['unavailableReplicas'] == null ? null : map['unavailableReplicas'] as int,
      updatedReplicas: map['updatedReplicas'] == null ? null : map['updatedReplicas'] as int,
    );
  }
}

