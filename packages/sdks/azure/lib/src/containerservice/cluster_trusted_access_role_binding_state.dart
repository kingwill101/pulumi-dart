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
    pulumi.Output<String>? kubernetesClusterId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? roles,
    pulumi.Output<String>? sourceResourceId,
  }) :
      kubernetesClusterId = pulumi.Input.asOptionalInput<String>(kubernetesClusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      roles = pulumi.Input.asOptionalInput<List<String>>(roles),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId);

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
      kubernetesClusterId: map['kubernetesClusterId'] == null ? null : pulumi.Output.create<String>(map['kubernetesClusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<String>>((map['roles'] as List).cast<String>()),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
    );
  }
}

