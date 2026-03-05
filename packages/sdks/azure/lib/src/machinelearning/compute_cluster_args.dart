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
    this.description,
    this.identity,
    this.localAuthEnabled,
    this.location,
    required this.machineLearningWorkspaceId,
    this.name,
    this.nodePublicIpEnabled,
    required this.scaleSettings,
    this.ssh,
    this.sshPublicAccessEnabled,
    this.subnetResourceId,
    this.tags,
    required this.vmPriority,
    required this.vmSize,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineLearningWorkspaceId: pulumi.Input.fromValue(map['machineLearningWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePublicIpEnabled: (() { final guardedValue = map['nodePublicIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scaleSettings: pulumi.Input.fromValue(ComputeClusterScaleSettings.fromMap((map['scaleSettings']! as Map).cast<String, dynamic>())),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeClusterSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshPublicAccessEnabled: (() { final guardedValue = map['sshPublicAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetResourceId: (() { final guardedValue = map['subnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vmPriority: pulumi.Input.fromValue(map['vmPriority'] as String),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
    );
  }
}

