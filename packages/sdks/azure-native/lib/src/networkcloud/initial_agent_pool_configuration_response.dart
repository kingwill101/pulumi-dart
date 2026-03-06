// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration_response.dart';
import 'agent_options_response.dart';
import 'agent_pool_upgrade_settings_response.dart';
import 'attached_network_configuration_response.dart';
import 'kubernetes_label_response.dart';

class InitialAgentPoolConfigurationResponse {
  /// The administrator credentials to be used for the nodes in this agent pool.
  final pulumi.Input<AdministratorConfigurationResponse>? administratorConfiguration;
  /// The configurations that will be applied to each agent in this agent pool.
  final pulumi.Input<AgentOptionsResponse>? agentOptions;
  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  final pulumi.Input<AttachedNetworkConfigurationResponse>? attachedNetworkConfiguration;
  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;
  /// The labels applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabelResponse>>? labels;
  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  final pulumi.Input<String> mode;
  /// The name that will be used for the agent pool resource representing this agent pool.
  final pulumi.Input<String> name;
  /// The taints applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabelResponse>>? taints;
  /// The configuration of the agent pool.
  final pulumi.Input<AgentPoolUpgradeSettingsResponse>? upgradeSettings;
  /// The name of the VM SKU that determines the size of resources allocated for node VMs.
  final pulumi.Input<String> vmSkuName;

  /// Creates a new [InitialAgentPoolConfigurationResponse].
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
  const InitialAgentPoolConfigurationResponse({
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
      'administratorConfiguration': ?pulumi.Input.mapOptionalInputValue<AdministratorConfigurationResponse, Map<String, dynamic>>(administratorConfiguration, (value) => value.toMap()),
      'agentOptions': ?pulumi.Input.mapOptionalInputValue<AgentOptionsResponse, Map<String, dynamic>>(agentOptions, (value) => value.toMap()),
      'attachedNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<AttachedNetworkConfigurationResponse, Map<String, dynamic>>(attachedNetworkConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'count': count,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabelResponse>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<KubernetesLabelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'name': name,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabelResponse>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<KubernetesLabelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<AgentPoolUpgradeSettingsResponse, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSkuName': vmSkuName,
    };
  }

  factory InitialAgentPoolConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return InitialAgentPoolConfigurationResponse(
      administratorConfiguration: (() { final guardedValue = map['administratorConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdministratorConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentOptions: (() { final guardedValue = map['agentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attachedNetworkConfiguration: (() { final guardedValue = map['attachedNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedNetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      count: pulumi.Input.fromValue(map['count'] as double),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesLabelResponse>(guardedValue, (value) => KubernetesLabelResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesLabelResponse>(guardedValue, (value) => KubernetesLabelResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSkuName: pulumi.Input.fromValue(map['vmSkuName'] as String),
    );
  }
}

