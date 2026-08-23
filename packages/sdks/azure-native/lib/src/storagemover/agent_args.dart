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
  const AgentArgs({
    this.agentName,
    required this.arcResourceId,
    required this.arcVmUuid,
    this.description,
    required this.resourceGroupName,
    required this.storageMoverName,
    this.uploadLimitSchedule,
  });

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
      agentName: (() { final guardedValue = map['agentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcResourceId: pulumi.Input.fromValue(map['arcResourceId'] as String),
      arcVmUuid: pulumi.Input.fromValue(map['arcVmUuid'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Input.fromValue(map['storageMoverName'] as String),
      uploadLimitSchedule: (() { final guardedValue = map['uploadLimitSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UploadLimitSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
