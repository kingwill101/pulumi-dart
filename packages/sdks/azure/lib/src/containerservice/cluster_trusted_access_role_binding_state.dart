// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterTrustedAccessRoleBinding resources.
class ClusterTrustedAccessRoleBindingState {
  /// Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  final pulumi.Input<String>? kubernetesClusterId;
  /// Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  final pulumi.Input<String>? name;
  /// A list of roles to bind, each item is a resource type qualified role name.
  final pulumi.Input<List<String>>? roles;
  /// The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [ClusterTrustedAccessRoleBindingState].
  /// [kubernetesClusterId] Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  /// [name] Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  /// [roles] A list of roles to bind, each item is a resource type qualified role name.
  /// [sourceResourceId] The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  ClusterTrustedAccessRoleBindingState({
    this.kubernetesClusterId,
    this.name,
    this.roles,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesClusterId': ?kubernetesClusterId,
      'name': ?name,
      'roles': ?roles,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory ClusterTrustedAccessRoleBindingState.fromMap(Map<String, dynamic> map) {
    return ClusterTrustedAccessRoleBindingState(
      kubernetesClusterId: (() { final guardedValue = map['kubernetesClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

