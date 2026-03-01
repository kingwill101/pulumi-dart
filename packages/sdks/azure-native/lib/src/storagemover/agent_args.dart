// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_limit_schedule.dart';

/// {@template pulumi_storagemover_agent_args_doc}
/// The set of arguments for Agent.
/// {@endtemplate}
/// {@macro pulumi_storagemover_agent_args_doc}
class AgentArgs {
  /// The name of the Agent resource.
  final pulumi.Input<String>? agentName;
  /// The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  final pulumi.Input<String> arcResourceId;
  /// The VM UUID of the Hybrid Compute resource for the Agent.
  final pulumi.Input<String> arcVmUuid;
  /// A description for the Agent.
  final pulumi.Input<String>? description;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;
  /// The WAN-link upload limit schedule that applies to any Job Run the agent executes. Data plane operations (migrating files) are affected. Control plane operations ensure seamless migration functionality and are not limited by this schedule. The schedule is interpreted with the agent's local time.
  final pulumi.Input<UploadLimitSchedule>? uploadLimitSchedule;

  /// Creates a new [AgentArgs].
  /// [agentName] The name of the Agent resource.
  /// [arcResourceId] The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  /// [arcVmUuid] The VM UUID of the Hybrid Compute resource for the Agent.
  /// [description] A description for the Agent.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  /// [uploadLimitSchedule] The WAN-link upload limit schedule that applies to any Job Run the agent executes. Data plane operations (migrating files) are affected. Control plane operations ensure seamless migration functionality and are not limited by this schedule. The schedule is interpreted with the agent's local time.
  AgentArgs({
    pulumi.Output<String>? agentName,
    required pulumi.Output<String> arcResourceId,
    required pulumi.Output<String> arcVmUuid,
    pulumi.Output<String>? description,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageMoverName,
    pulumi.Output<UploadLimitSchedule>? uploadLimitSchedule,
  }) :
      agentName = pulumi.Input.asOptionalInput<String>(agentName),
      arcResourceId = pulumi.Input.asInput<String>(arcResourceId),
      arcVmUuid = pulumi.Input.asInput<String>(arcVmUuid),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asInput<String>(storageMoverName),
      uploadLimitSchedule = pulumi.Input.asOptionalInput<UploadLimitSchedule>(uploadLimitSchedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'arcResourceId': arcResourceId,
      'arcVmUuid': arcVmUuid,
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
      'uploadLimitSchedule': ?pulumi.Input.mapOptionalInputValue<UploadLimitSchedule, Map<String, dynamic>>(uploadLimitSchedule, (value) => value.toMap()),
    };
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      agentName: map['agentName'] == null ? null : pulumi.Output.create<String>(map['agentName'] as String),
      arcResourceId: pulumi.Output.create<String>(map['arcResourceId'] as String),
      arcVmUuid: pulumi.Output.create<String>(map['arcVmUuid'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Output.create<String>(map['storageMoverName'] as String),
      uploadLimitSchedule: map['uploadLimitSchedule'] == null ? null : pulumi.Output.create<UploadLimitSchedule>(UploadLimitSchedule.fromMap((map['uploadLimitSchedule'] as Map).cast<String, dynamic>())),
    );
  }
}

