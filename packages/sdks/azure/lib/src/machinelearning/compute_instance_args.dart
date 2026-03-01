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
  /// > **Note:** The property `subnet_resource_id` becomes required if `node_public_ip_enabled` is set to `false`, and the instance's workspace is not using a managed network (i.e. the workspace's outbound isolation mode is `Disabled`).
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// A `ssh` block as defined below. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created.
  final pulumi.Input<ComputeInstanceSsh>? ssh;
  /// Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created.
  ///
  /// > **Note:** The property `subnet_resource_id` can be set only if the instance's workspace is not using Azure-managed networking.
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
    pulumi.Output<ComputeInstanceAssignToUser>? assignToUser,
    pulumi.Output<String>? authorizationType,
    pulumi.Output<String>? description,
    pulumi.Output<ComputeInstanceIdentity>? identity,
    pulumi.Output<bool>? localAuthEnabled,
    required pulumi.Output<String> machineLearningWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? nodePublicIpEnabled,
    pulumi.Output<ComputeInstanceSsh>? ssh,
    pulumi.Output<String>? subnetResourceId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> virtualMachineSize,
  }) :
      assignToUser = pulumi.Input.asOptionalInput<ComputeInstanceAssignToUser>(assignToUser),
      authorizationType = pulumi.Input.asOptionalInput<String>(authorizationType),
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<ComputeInstanceIdentity>(identity),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      machineLearningWorkspaceId = pulumi.Input.asInput<String>(machineLearningWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePublicIpEnabled = pulumi.Input.asOptionalInput<bool>(nodePublicIpEnabled),
      ssh = pulumi.Input.asOptionalInput<ComputeInstanceSsh>(ssh),
      subnetResourceId = pulumi.Input.asOptionalInput<String>(subnetResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMachineSize = pulumi.Input.asInput<String>(virtualMachineSize);

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
      assignToUser: map['assignToUser'] == null ? null : pulumi.Output.create<ComputeInstanceAssignToUser>(ComputeInstanceAssignToUser.fromMap((map['assignToUser'] as Map).cast<String, dynamic>())),
      authorizationType: map['authorizationType'] == null ? null : pulumi.Output.create<String>(map['authorizationType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ComputeInstanceIdentity>(ComputeInstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      machineLearningWorkspaceId: pulumi.Output.create<String>(map['machineLearningWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['nodePublicIpEnabled'] as bool),
      ssh: map['ssh'] == null ? null : pulumi.Output.create<ComputeInstanceSsh>(ComputeInstanceSsh.fromMap((map['ssh'] as Map).cast<String, dynamic>())),
      subnetResourceId: map['subnetResourceId'] == null ? null : pulumi.Output.create<String>(map['subnetResourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualMachineSize: pulumi.Output.create<String>(map['virtualMachineSize'] as String),
    );
  }
}

