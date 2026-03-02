// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_condition_apps_v1beta1.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatusAppsV1beta1 {
  /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  final pulumi.Input<int>? availableReplicas;
  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  final pulumi.Input<int>? collisionCount;
  /// Represents the latest available observations of a deployment's current state.
  final pulumi.Input<List<DeploymentConditionAppsV1beta1>>? conditions;
  /// The generation observed by the deployment controller.
  final pulumi.Input<int>? observedGeneration;
  /// Total number of ready pods targeted by this deployment.
  final pulumi.Input<int>? readyReplicas;
  /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  final pulumi.Input<int>? replicas;
  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  final pulumi.Input<int>? unavailableReplicas;
  /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  final pulumi.Input<int>? updatedReplicas;

  /// Creates a new [DeploymentStatusAppsV1beta1].
  /// [availableReplicas] Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  /// [collisionCount] Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  /// [conditions] Represents the latest available observations of a deployment's current state.
  /// [observedGeneration] The generation observed by the deployment controller.
  /// [readyReplicas] Total number of ready pods targeted by this deployment.
  /// [replicas] Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  /// [unavailableReplicas] Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  /// [updatedReplicas] Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  DeploymentStatusAppsV1beta1({
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
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DeploymentConditionAppsV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DeploymentConditionAppsV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'unavailableReplicas': ?unavailableReplicas,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory DeploymentStatusAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentStatusAppsV1beta1(
      availableReplicas: map['availableReplicas'] == null ? null : (map['availableReplicas']! as int).input(),
      collisionCount: map['collisionCount'] == null ? null : (map['collisionCount']! as int).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<DeploymentConditionAppsV1beta1>(map['conditions']!, (value) => DeploymentConditionAppsV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration']! as int).input(),
      readyReplicas: map['readyReplicas'] == null ? null : (map['readyReplicas']! as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      unavailableReplicas: map['unavailableReplicas'] == null ? null : (map['unavailableReplicas']! as int).input(),
      updatedReplicas: map['updatedReplicas'] == null ? null : (map['updatedReplicas']! as int).input(),
    );
  }
}

