// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_cluster_trusted_access_role_binding_cluster_trusted_access_role_binding_args_doc}
/// The set of arguments for ClusterTrustedAccessRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_containerservice_cluster_trusted_access_role_binding_cluster_trusted_access_role_binding_args_doc}
class ClusterTrustedAccessRoleBindingArgs {
  /// Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  final pulumi.Input<String> kubernetesClusterId;
  /// Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  final pulumi.Input<String>? name;
  /// A list of roles to bind, each item is a resource type qualified role name.
  final pulumi.Input<List<String>> roles;
  /// The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  final pulumi.Input<String> sourceResourceId;

  /// Creates a new [ClusterTrustedAccessRoleBindingArgs].
  /// [kubernetesClusterId] Specifies the Kubernetes Cluster Id within which this Kubernetes Cluster Trusted Access Role Binding should exist. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  /// [name] Specifies the name of this Kubernetes Cluster Trusted Access Role Binding. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  /// [roles] A list of roles to bind, each item is a resource type qualified role name.
  /// [sourceResourceId] The ARM resource ID of source resource that trusted access is configured for. Changing this forces a new Kubernetes Cluster Trusted Access Role Binding to be created.
  ClusterTrustedAccessRoleBindingArgs({
    required pulumi.Output<String> kubernetesClusterId,
    pulumi.Output<String>? name,
    required pulumi.Output<List<String>> roles,
    required pulumi.Output<String> sourceResourceId,
  }) :
      kubernetesClusterId = pulumi.Input.asInput<String>(kubernetesClusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      roles = pulumi.Input.asInput<List<String>>(roles),
      sourceResourceId = pulumi.Input.asInput<String>(sourceResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesClusterId': kubernetesClusterId,
      'name': ?name,
      'roles': roles,
      'sourceResourceId': sourceResourceId,
    };
  }

  factory ClusterTrustedAccessRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return ClusterTrustedAccessRoleBindingArgs(
      kubernetesClusterId: pulumi.Output.create<String>(map['kubernetesClusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      roles: pulumi.Output.create<List<String>>((map['roles'] as List).cast<String>()),
      sourceResourceId: pulumi.Output.create<String>(map['sourceResourceId'] as String),
    );
  }
}

