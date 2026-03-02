// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_instance_assign_to_user.dart';
import 'compute_instance_identity.dart';
import 'compute_instance_ssh.dart';

/// Input properties used for looking up and filtering ComputeInstance resources.
class ComputeInstanceState {
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
  final pulumi.Input<String>? machineLearningWorkspaceId;
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
  final pulumi.Input<String>? virtualMachineSize;

  /// Creates a new [ComputeInstanceState].
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
  ComputeInstanceState({
    this.assignToUser,
    this.authorizationType,
    this.description,
    this.identity,
    this.localAuthEnabled,
    this.machineLearningWorkspaceId,
    this.name,
    this.nodePublicIpEnabled,
    this.ssh,
    this.subnetResourceId,
    this.tags,
    this.virtualMachineSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignToUser': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceAssignToUser, Map<String, dynamic>>(assignToUser, (value) => value.toMap()),
      'authorizationType': ?authorizationType,
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'machineLearningWorkspaceId': ?machineLearningWorkspaceId,
      'name': ?name,
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'ssh': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'subnetResourceId': ?subnetResourceId,
      'tags': ?tags,
      'virtualMachineSize': ?virtualMachineSize,
    };
  }

  factory ComputeInstanceState.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceState(
      assignToUser: map['assignToUser'] == null ? null : (ComputeInstanceAssignToUser.fromMap((map['assignToUser'] as Map).cast<String, dynamic>())).input(),
      authorizationType: map['authorizationType'] == null ? null : (map['authorizationType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      identity: map['identity'] == null ? null : (ComputeInstanceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled'] as bool).input(),
      machineLearningWorkspaceId: map['machineLearningWorkspaceId'] == null ? null : (map['machineLearningWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] == null ? null : (map['nodePublicIpEnabled'] as bool).input(),
      ssh: map['ssh'] == null ? null : (ComputeInstanceSsh.fromMap((map['ssh'] as Map).cast<String, dynamic>())).input(),
      subnetResourceId: map['subnetResourceId'] == null ? null : (map['subnetResourceId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualMachineSize: map['virtualMachineSize'] == null ? null : (map['virtualMachineSize'] as String).input(),
    );
  }
}

