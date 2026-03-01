// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_agent_pool_args_doc}
/// Arguments for getAgentPool.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_agent_pool_args_doc}
class GetAgentPoolArgs {
  /// The name of the Kubernetes cluster agent pool.
  final pulumi.Input<String> agentPoolName;
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String> kubernetesClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentPoolArgs].
  /// [agentPoolName] The name of the Kubernetes cluster agent pool.
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAgentPoolArgs({
    required pulumi.Output<String> agentPoolName,
    required pulumi.Output<String> kubernetesClusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      agentPoolName = pulumi.Input.asInput<String>(agentPoolName),
      kubernetesClusterName = pulumi.Input.asInput<String>(kubernetesClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': agentPoolName,
      'kubernetesClusterName': kubernetesClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolArgs(
      agentPoolName: pulumi.Output.create<String>(map['agentPoolName'] as String),
      kubernetesClusterName: pulumi.Output.create<String>(map['kubernetesClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

