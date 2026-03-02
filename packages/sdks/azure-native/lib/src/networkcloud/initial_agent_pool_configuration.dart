// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration.dart';
import 'agent_options.dart';
import 'agent_pool_upgrade_settings.dart';
import 'attached_network_configuration.dart';
import 'kubernetes_label.dart';

class InitialAgentPoolConfiguration {
  /// The administrator credentials to be used for the nodes in this agent pool.
  final pulumi.Input<AdministratorConfiguration>? administratorConfiguration;
  /// The configurations that will be applied to each agent in this agent pool.
  final pulumi.Input<AgentOptions>? agentOptions;
  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  final pulumi.Input<AttachedNetworkConfiguration>? attachedNetworkConfiguration;
  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;
  /// The labels applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>>? labels;
  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  final pulumi.Input<String> mode;
  /// The name that will be used for the agent pool resource representing this agent pool.
  final pulumi.Input<String> name;
  /// The taints applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>>? taints;
  /// The configuration of the agent pool.
  final pulumi.Input<AgentPoolUpgradeSettings>? upgradeSettings;
  /// The name of the VM SKU that determines the size of resources allocated for node VMs.
  final pulumi.Input<String> vmSkuName;

  /// Creates a new [InitialAgentPoolConfiguration].
  /// [administratorConfiguration] The administrator credentials to be used for the nodes in this agent pool.
  /// [agentOptions] The configurations that will be applied to each agent in this agent pool.
  /// [attachedNetworkConfiguration] The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  /// [availabilityZones] The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  /// [count] The number of virtual machines that use this configuration.
  /// [labels] The labels applied to the nodes in this agent pool.
  /// [mode] The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  /// [name] The name that will be used for the agent pool resource representing this agent pool.
  /// [taints] The taints applied to the nodes in this agent pool.
  /// [upgradeSettings] The configuration of the agent pool.
  /// [vmSkuName] The name of the VM SKU that determines the size of resources allocated for node VMs.
  InitialAgentPoolConfiguration({
    this.administratorConfiguration,
    this.agentOptions,
    this.attachedNetworkConfiguration,
    this.availabilityZones,
    required this.count,
    this.labels,
    required this.mode,
    required this.name,
    this.taints,
    this.upgradeSettings,
    required this.vmSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorConfiguration': ?pulumi.Input.mapOptionalInputValue<AdministratorConfiguration, Map<String, dynamic>>(administratorConfiguration, (value) => value.toMap()),
      'agentOptions': ?pulumi.Input.mapOptionalInputValue<AgentOptions, Map<String, dynamic>>(agentOptions, (value) => value.toMap()),
      'attachedNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<AttachedNetworkConfiguration, Map<String, dynamic>>(attachedNetworkConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'count': count,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<KubernetesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'name': name,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabel>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<KubernetesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<AgentPoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSkuName': vmSkuName,
    };
  }

  factory InitialAgentPoolConfiguration.fromMap(Map<String, dynamic> map) {
    return InitialAgentPoolConfiguration(
      administratorConfiguration: map['administratorConfiguration'] == null ? null : (AdministratorConfiguration.fromMap((map['administratorConfiguration'] as Map).cast<String, dynamic>())).input(),
      agentOptions: map['agentOptions'] == null ? null : (AgentOptions.fromMap((map['agentOptions'] as Map).cast<String, dynamic>())).input(),
      attachedNetworkConfiguration: map['attachedNetworkConfiguration'] == null ? null : (AttachedNetworkConfiguration.fromMap((map['attachedNetworkConfiguration'] as Map).cast<String, dynamic>())).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      count: (map['count'] as double).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<KubernetesLabel>(map['labels'], (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<KubernetesLabel>(map['taints'], (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      upgradeSettings: map['upgradeSettings'] == null ? null : (AgentPoolUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())).input(),
      vmSkuName: (map['vmSkuName'] as String).input(),
    );
  }
}

