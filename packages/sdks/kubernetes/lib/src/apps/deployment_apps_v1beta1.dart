// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'deployment_spec_apps_v1beta1.dart';
import 'deployment_status_apps_v1beta1.dart';

/// Deployment enables declarative updates for Pods and ReplicaSets.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The Deployment has begun to be updated by the Deployment controller. If the current
/// generation of the Deployment is > 1, then this means that the current generation must
/// be different from the generation reported by the last outputs.
/// 2. There exists a ReplicaSet whose revision is equal to the current revision of the
/// Deployment.
/// 3. The Deployment's '.status.conditions' has a status of type 'Available' whose 'status'
/// member is set to 'True'.
/// 4. If the Deployment has generation > 1, then '.status.conditions' has a status of type
/// 'Progressing', whose 'status' member is set to 'True', and whose 'reason' is
/// 'NewReplicaSetAvailable'. For generation <= 1, this status field does not exist,
/// because it doesn't do a rollout (i.e., it simply creates the Deployment and
/// corresponding ReplicaSet), and therefore there is no rollout to mark as 'Progressing'.
///
/// If the Deployment has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class DeploymentAppsV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata.
  final ObjectMeta? metadata;
  /// Specification of the desired behavior of the Deployment.
  final DeploymentSpecAppsV1beta1? spec;
  /// Most recently observed status of the Deployment.
  final DeploymentStatusAppsV1beta1? status;

  /// Creates a new [DeploymentAppsV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata.
  /// [spec] Specification of the desired behavior of the Deployment.
  /// [status] Most recently observed status of the Deployment.
  DeploymentAppsV1beta1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory DeploymentAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentAppsV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : DeploymentSpecAppsV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : DeploymentStatusAppsV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

