// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration.dart';
import 'agent_options.dart';
import 'agent_pool_upgrade_settings.dart';
import 'attached_network_configuration.dart';
import 'kubernetes_label.dart';

class InitialAgentPoolConfiguration {
  /// The administrator credentials to be used for the nodes in this agent pool.
  final pulumi.Input<AdministratorConfiguration?>? administratorConfiguration;
  /// The configurations that will be applied to each agent in this agent pool.
  final pulumi.Input<AgentOptions?>? agentOptions;
  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  final pulumi.Input<AttachedNetworkConfiguration?>? attachedNetworkConfiguration;
  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>?>? availabilityZones;
  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;
  /// The labels applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>?>? labels;
  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  final pulumi.Input<dynamic> mode;
  /// The name that will be used for the agent pool resource representing this agent pool.
  final pulumi.Input<String> name;
  /// The taints applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>?>? taints;
  /// The configuration of the agent pool.
  final pulumi.Input<AgentPoolUpgradeSettings?>? upgradeSettings;
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
  const InitialAgentPoolConfiguration({
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
      administratorConfiguration: (() { final guardedValue = map['administratorConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdministratorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentOptions: (() { final guardedValue = map['agentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attachedNetworkConfiguration: (() { final guardedValue = map['attachedNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      count: pulumi.Input.fromValue((map['count'] as num).toDouble()),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesLabel>(guardedValue, (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: pulumi.Input.fromValue(map['mode']),
      name: pulumi.Input.fromValue(map['name'] as String),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesLabel>(guardedValue, (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSkuName: pulumi.Input.fromValue(map['vmSkuName'] as String),
    );
  }
}
