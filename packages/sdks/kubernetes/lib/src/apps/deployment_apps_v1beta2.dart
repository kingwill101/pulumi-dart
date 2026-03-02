// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'deployment_spec_apps_v1beta2.dart';
import 'deployment_status_apps_v1beta2.dart';

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
class DeploymentAppsV1beta2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Specification of the desired behavior of the Deployment.
  final pulumi.Input<DeploymentSpecAppsV1beta2>? spec;
  /// Most recently observed status of the Deployment.
  final pulumi.Input<DeploymentStatusAppsV1beta2>? status;

  /// Creates a new [DeploymentAppsV1beta2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata.
  /// [spec] Specification of the desired behavior of the Deployment.
  /// [status] Most recently observed status of the Deployment.
  DeploymentAppsV1beta2({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<DeploymentSpecAppsV1beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<DeploymentStatusAppsV1beta2, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory DeploymentAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DeploymentAppsV1beta2(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (DeploymentSpecAppsV1beta2.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (DeploymentStatusAppsV1beta2.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

