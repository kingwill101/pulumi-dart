// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration.dart';
import 'agent_options.dart';
import 'agent_pool_upgrade_settings.dart';
import 'attached_network_configuration.dart';
import 'extended_location.dart';
import 'kubernetes_label.dart';

/// {@template pulumi_networkcloud_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_agent_pool_args_doc}
class AgentPoolArgs {
  /// The administrator credentials to be used for the nodes in this agent pool.
  final pulumi.Input<AdministratorConfiguration?>? administratorConfiguration;
  /// The configurations that will be applied to each agent in this agent pool.
  final pulumi.Input<AgentOptions?>? agentOptions;
  /// The name of the Kubernetes cluster agent pool.
  final pulumi.Input<String?>? agentPoolName;
  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  final pulumi.Input<AttachedNetworkConfiguration?>? attachedNetworkConfiguration;
  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>?>? availabilityZones;
  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String> kubernetesClusterName;
  /// The labels applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>?>? labels;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  final pulumi.Input<dynamic> mode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The taints applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>?>? taints;
  /// The configuration of the agent pool.
  final pulumi.Input<AgentPoolUpgradeSettings?>? upgradeSettings;
  /// The name of the VM SKU that determines the size of resources allocated for node VMs.
  final pulumi.Input<String> vmSkuName;

  /// Creates a new [AgentPoolArgs].
  /// [administratorConfiguration] The administrator credentials to be used for the nodes in this agent pool.
  /// [agentOptions] The configurations that will be applied to each agent in this agent pool.
  /// [agentPoolName] The name of the Kubernetes cluster agent pool.
  /// [attachedNetworkConfiguration] The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  /// [availabilityZones] The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  /// [count] The number of virtual machines that use this configuration.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [labels] The labels applied to the nodes in this agent pool.
  /// [location] The geo-location where the resource lives
  /// [mode] The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [taints] The taints applied to the nodes in this agent pool.
  /// [upgradeSettings] The configuration of the agent pool.
  /// [vmSkuName] The name of the VM SKU that determines the size of resources allocated for node VMs.
  const AgentPoolArgs({
    this.administratorConfiguration,
    this.agentOptions,
    this.agentPoolName,
    this.attachedNetworkConfiguration,
    this.availabilityZones,
    required this.count,
    this.extendedLocation,
    required this.kubernetesClusterName,
    this.labels,
    this.location,
    required this.mode,
    required this.resourceGroupName,
    this.tags,
    this.taints,
    this.upgradeSettings,
    required this.vmSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorConfiguration': ?pulumi.Input.mapOptionalInputValue<AdministratorConfiguration, Map<String, dynamic>>(administratorConfiguration, (value) => value.toMap()),
      'agentOptions': ?pulumi.Input.mapOptionalInputValue<AgentOptions, Map<String, dynamic>>(agentOptions, (value) => value.toMap()),
      'agentPoolName': ?agentPoolName,
      'attachedNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<AttachedNetworkConfiguration, Map<String, dynamic>>(attachedNetworkConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'count': count,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'kubernetesClusterName': kubernetesClusterName,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<KubernetesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'mode': mode,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabel>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<KubernetesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<AgentPoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSkuName': vmSkuName,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      administratorConfiguration: (() { final guardedValue = map['administratorConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdministratorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentOptions: (() { final guardedValue = map['agentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentPoolName: (() { final guardedValue = map['agentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachedNetworkConfiguration: (() { final guardedValue = map['attachedNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      count: pulumi.Input.fromValue((map['count'] as num).toDouble()),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesClusterName: pulumi.Input.fromValue(map['kubernetesClusterName'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesLabel>(guardedValue, (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesLabel>(guardedValue, (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSkuName: pulumi.Input.fromValue(map['vmSkuName'] as String),
    );
  }
}
