// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_instance_assign_to_user.dart';
import 'compute_instance_identity.dart';
import 'compute_instance_ssh.dart';

/// {@template pulumi_machinelearning_compute_instance_compute_instance_args_doc}
/// The set of arguments for ComputeInstance.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_compute_instance_compute_instance_args_doc}
class ComputeInstanceArgs {
  /// A `assign_to_user` block as defined below. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<ComputeInstanceAssignToUser>? assignToUser;
  /// The Compute Instance Authorization type. Possible values include: `personal`. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<String>? authorizationType;
  /// The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<String>? description;
  /// An `identity` block as defined below. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<ComputeInstanceIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<bool>? localAuthEnabled;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<String> machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<String>? name;
  /// Whether the compute instance will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  ///
  /// &gt; **Note:** The property `subnet_resource_id` becomes required if `node_public_ip_enabled` is set to `false`, and the instance's workspace is not using a managed network (i.e. the workspace's outbound isolation mode is `Disabled`).
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// A `ssh` block as defined below. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<ComputeInstanceSsh>? ssh;
  /// Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created.
  ///
  /// &gt; **Note:** The property `subnet_resource_id` can be set only if the instance's workspace is not using Azure-managed networking.
  final pulumi.Input<String>? subnetResourceId;
  /// A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<String> virtualMachineSize;

  /// Creates a new [ComputeInstanceArgs].
  /// [assignToUser] A `assign_to_user` block as defined below. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [authorizationType] The Compute Instance Authorization type. Possible values include: `personal`. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [description] The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [name] The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [nodePublicIpEnabled] Whether the compute instance will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [ssh] A `ssh` block as defined below. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [subnetResourceId] Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created.
  /// [virtualMachineSize] The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created.
  ComputeInstanceArgs({
    this.assignToUser,
    this.authorizationType,
    this.description,
    this.identity,
    this.localAuthEnabled,
    required this.machineLearningWorkspaceId,
    this.name,
    this.nodePublicIpEnabled,
    this.ssh,
    this.subnetResourceId,
    this.tags,
    required this.virtualMachineSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignToUser': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceAssignToUser, Map<String, dynamic>>(assignToUser, (value) => value.toMap()),
      'authorizationType': ?authorizationType,
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'machineLearningWorkspaceId': machineLearningWorkspaceId,
      'name': ?name,
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'ssh': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'subnetResourceId': ?subnetResourceId,
      'tags': ?tags,
      'virtualMachineSize': virtualMachineSize,
    };
  }

  factory ComputeInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceArgs(
      assignToUser: (() { final guardedValue = map['assignToUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeInstanceAssignToUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineLearningWorkspaceId: pulumi.Input.fromValue(map['machineLearningWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePublicIpEnabled: (() { final guardedValue = map['nodePublicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeInstanceSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetResourceId: (() { final guardedValue = map['subnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualMachineSize: pulumi.Input.fromValue(map['virtualMachineSize'] as String),
    );
  }
}

