// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_cluster_identity.dart';
import 'compute_cluster_scale_settings.dart';
import 'compute_cluster_ssh.dart';

/// {@template pulumi_machinelearning_compute_cluster_compute_cluster_args_doc}
/// The set of arguments for ComputeCluster.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_compute_cluster_compute_cluster_args_doc}
class ComputeClusterArgs {
  /// The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? description;
  /// An `identity` block as defined below.
  final pulumi.Input<ComputeClusterIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<bool>? localAuthEnabled;
  /// The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String> machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? name;
  /// Whether the compute cluster will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// A `scale_settings` block as defined below.
  final pulumi.Input<ComputeClusterScaleSettings> scaleSettings;
  /// Credentials for an administrator user account that will be created on each compute node. A `ssh` block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<ComputeClusterSsh>? ssh;
  /// A boolean value indicating whether enable the public SSH port. Defaults to `false`. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<bool>? sshPublicAccessEnabled;
  /// The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? subnetResourceId;
  /// A mapping of tags which should be assigned to the Machine Learning Compute Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`.
  final pulumi.Input<String> vmPriority;
  /// The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String> vmSize;

  /// Creates a new [ComputeClusterArgs].
  /// [description] The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [identity] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [location] The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [name] The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [nodePublicIpEnabled] Whether the compute cluster will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [scaleSettings] A `scale_settings` block as defined below.
  /// [ssh] Credentials for an administrator user account that will be created on each compute node. A `ssh` block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [sshPublicAccessEnabled] A boolean value indicating whether enable the public SSH port. Defaults to `false`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [subnetResourceId] The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Compute Cluster.
  /// [vmPriority] The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`.
  /// [vmSize] The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
  ComputeClusterArgs({
    pulumi.Output<String>? description,
    pulumi.Output<ComputeClusterIdentity>? identity,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    required pulumi.Output<String> machineLearningWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? nodePublicIpEnabled,
    required pulumi.Output<ComputeClusterScaleSettings> scaleSettings,
    pulumi.Output<ComputeClusterSsh>? ssh,
    pulumi.Output<bool>? sshPublicAccessEnabled,
    pulumi.Output<String>? subnetResourceId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vmPriority,
    required pulumi.Output<String> vmSize,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<ComputeClusterIdentity>(identity),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineLearningWorkspaceId = pulumi.Input.asInput<String>(machineLearningWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePublicIpEnabled = pulumi.Input.asOptionalInput<bool>(nodePublicIpEnabled),
      scaleSettings = pulumi.Input.asInput<ComputeClusterScaleSettings>(scaleSettings),
      ssh = pulumi.Input.asOptionalInput<ComputeClusterSsh>(ssh),
      sshPublicAccessEnabled = pulumi.Input.asOptionalInput<bool>(sshPublicAccessEnabled),
      subnetResourceId = pulumi.Input.asOptionalInput<String>(subnetResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmPriority = pulumi.Input.asInput<String>(vmPriority),
      vmSize = pulumi.Input.asInput<String>(vmSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<ComputeClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'machineLearningWorkspaceId': machineLearningWorkspaceId,
      'name': ?name,
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'scaleSettings': pulumi.Input.mapInputValue<ComputeClusterScaleSettings, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'ssh': ?pulumi.Input.mapOptionalInputValue<ComputeClusterSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'sshPublicAccessEnabled': ?sshPublicAccessEnabled,
      'subnetResourceId': ?subnetResourceId,
      'tags': ?tags,
      'vmPriority': vmPriority,
      'vmSize': vmSize,
    };
  }

  factory ComputeClusterArgs.fromMap(Map<String, dynamic> map) {
    return ComputeClusterArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ComputeClusterIdentity>(ComputeClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineLearningWorkspaceId: pulumi.Output.create<String>(map['machineLearningWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['nodePublicIpEnabled'] as bool),
      scaleSettings: pulumi.Output.create<ComputeClusterScaleSettings>(ComputeClusterScaleSettings.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>())),
      ssh: map['ssh'] == null ? null : pulumi.Output.create<ComputeClusterSsh>(ComputeClusterSsh.fromMap((map['ssh'] as Map).cast<String, dynamic>())),
      sshPublicAccessEnabled: map['sshPublicAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['sshPublicAccessEnabled'] as bool),
      subnetResourceId: map['subnetResourceId'] == null ? null : pulumi.Output.create<String>(map['subnetResourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vmPriority: pulumi.Output.create<String>(map['vmPriority'] as String),
      vmSize: pulumi.Output.create<String>(map['vmSize'] as String),
    );
  }
}

