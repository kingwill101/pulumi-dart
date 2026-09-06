// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration_response.dart';
import 'agent_options_response.dart';
import 'agent_pool_upgrade_settings_response.dart';
import 'attached_network_configuration_response.dart';
import 'extended_location_response.dart';
import 'kubernetes_label_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAgentPool.
class GetAgentPoolResult {
  /// The administrator credentials to be used for the nodes in this agent pool.
  final AdministratorConfigurationResponse? administratorConfiguration;
  /// The configurations that will be applied to each agent in this agent pool.
  final AgentOptionsResponse? agentOptions;
  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  final AttachedNetworkConfigurationResponse? attachedNetworkConfiguration;
  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The number of virtual machines that use this configuration.
  final double? count;
  /// The current status of the agent pool.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The Kubernetes version running in this agent pool.
  final String? kubernetesVersion;
  /// The labels applied to the nodes in this agent pool.
  final List<KubernetesLabelResponse>? labels;
  /// The geo-location where the resource lives
  final String? location;
  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  final String? mode;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the agent pool.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The taints applied to the nodes in this agent pool.
  final List<KubernetesLabelResponse>? taints;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The configuration of the agent pool.
  final AgentPoolUpgradeSettingsResponse? upgradeSettings;
  /// The name of the VM SKU that determines the size of resources allocated for node VMs.
  final String? vmSkuName;

  /// Creates a new [GetAgentPoolResult].
  /// [administratorConfiguration] The administrator credentials to be used for the nodes in this agent pool.
  /// [agentOptions] The configurations that will be applied to each agent in this agent pool.
  /// [attachedNetworkConfiguration] The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  /// [availabilityZones] The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [count] The number of virtual machines that use this configuration.
  /// [detailedStatus] The current status of the agent pool.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kubernetesVersion] The Kubernetes version running in this agent pool.
  /// [labels] The labels applied to the nodes in this agent pool.
  /// [location] The geo-location where the resource lives
  /// [mode] The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the agent pool.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [taints] The taints applied to the nodes in this agent pool.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [upgradeSettings] The configuration of the agent pool.
  /// [vmSkuName] The name of the VM SKU that determines the size of resources allocated for node VMs.
  const GetAgentPoolResult({
    this.administratorConfiguration,
    this.agentOptions,
    this.attachedNetworkConfiguration,
    this.availabilityZones,
    this.azureApiVersion,
    this.count,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.extendedLocation,
    this.id,
    this.kubernetesVersion,
    this.labels,
    this.location,
    this.mode,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.taints,
    this.type,
    this.upgradeSettings,
    this.vmSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorConfiguration': ?administratorConfiguration?.toMap(),
      'agentOptions': ?agentOptions?.toMap(),
      'attachedNetworkConfiguration': ?attachedNetworkConfiguration?.toMap(),
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': ?azureApiVersion,
      'count': ?count,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'kubernetesVersion': ?kubernetesVersion,
      'labels': ?(() { final guardedValue = labels; if (guardedValue == null) return null; return pulumi.Input.encodeList<KubernetesLabelResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'taints': ?(() { final guardedValue = taints; if (guardedValue == null) return null; return pulumi.Input.encodeList<KubernetesLabelResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'upgradeSettings': ?upgradeSettings?.toMap(),
      'vmSkuName': ?vmSkuName,
    };
  }

  factory GetAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolResult(
      administratorConfiguration: (() { final guardedValue = map['administratorConfiguration']; if (guardedValue == null) return null; return AdministratorConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      agentOptions: (() { final guardedValue = map['agentOptions']; if (guardedValue == null) return null; return AgentOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      attachedNetworkConfiguration: (() { final guardedValue = map['attachedNetworkConfiguration']; if (guardedValue == null) return null; return AttachedNetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KubernetesLabelResponse>(guardedValue, (value) => KubernetesLabelResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KubernetesLabelResponse>(guardedValue, (value) => KubernetesLabelResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return AgentPoolUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vmSkuName: (() { final guardedValue = map['vmSkuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
