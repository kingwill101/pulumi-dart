// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_get_agent_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_storagemover_get_agent_args_doc}
class GetAgentArgs {
  /// The name of the Agent resource.
  final pulumi.Input<String> agentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [GetAgentArgs].
  /// [agentName] The name of the Agent resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  GetAgentArgs({
    required pulumi.Output<String> agentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageMoverName,
  }) :
      agentName = pulumi.Input.asInput<String>(agentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asInput<String>(storageMoverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory GetAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentArgs(
      agentName: pulumi.Output.create<String>(map['agentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Output.create<String>(map['storageMoverName'] as String),
    );
  }
}

