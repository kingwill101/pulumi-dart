// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_configuration_response.dart';
import 'administrator_configuration_response.dart';
import 'available_upgrade_response.dart';
import 'control_plane_node_configuration_response.dart';
import 'extended_location_response.dart';
import 'feature_status_response.dart';
import 'initial_agent_pool_configuration_response.dart';
import 'kubernetes_cluster_node_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'network_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKubernetesCluster.
class GetKubernetesClusterResult {
  /// The Azure Active Directory Integration properties.
  final AadConfigurationResponse? aadConfiguration;
  /// The administrative credentials that will be applied to the control plane and agent pool nodes that do not specify their own values.
  final AdministratorConfigurationResponse? administratorConfiguration;
  /// The full list of network resource IDs that are attached to this cluster, including those attached only to specific agent pools.
  final List<String> attachedNetworkIds;
  /// The list of versions that this Kubernetes cluster can be upgraded to.
  final List<AvailableUpgradeResponse> availableUpgrades;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the Network Cloud cluster.
  final String clusterId;
  /// The resource ID of the connected cluster set up when this Kubernetes cluster is created.
  final String connectedClusterId;
  /// The current running version of Kubernetes on the control plane.
  final String controlPlaneKubernetesVersion;
  /// The defining characteristics of the control plane for this Kubernetes Cluster.
  final ControlPlaneNodeConfigurationResponse controlPlaneNodeConfiguration;
  /// The current status of the Kubernetes cluster.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// The current feature settings.
  final List<FeatureStatusResponse> featureStatuses;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The agent pools that are created with this Kubernetes cluster for running critical system services and workloads. This data in this field is only used during creation, and the field will be empty following the creation of the Kubernetes Cluster. After creation, the management of agent pools is done using the agentPools sub-resource.
  final List<InitialAgentPoolConfigurationResponse> initialAgentPoolConfigurations;
  /// The Kubernetes version for this cluster.
  final String kubernetesVersion;
  /// The geo-location where the resource lives
  final String location;
  /// The configuration of the managed resource group associated with the resource.
  final ManagedResourceGroupConfigurationResponse? managedResourceGroupConfiguration;
  /// The name of the resource
  final String name;
  /// The configuration of the Kubernetes cluster networking, including the attachment of networks that span the cluster.
  final NetworkConfigurationResponse networkConfiguration;
  /// The details of the nodes in this cluster.
  final List<KubernetesClusterNodeResponse> nodes;
  /// The provisioning state of the Kubernetes cluster resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetKubernetesClusterResult].
  /// [aadConfiguration] The Azure Active Directory Integration properties.
  /// [administratorConfiguration] The administrative credentials that will be applied to the control plane and agent pool nodes that do not specify their own values.
  /// [attachedNetworkIds] The full list of network resource IDs that are attached to this cluster, including those attached only to specific agent pools.
  /// [availableUpgrades] The list of versions that this Kubernetes cluster can be upgraded to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] The resource ID of the Network Cloud cluster.
  /// [connectedClusterId] The resource ID of the connected cluster set up when this Kubernetes cluster is created.
  /// [controlPlaneKubernetesVersion] The current running version of Kubernetes on the control plane.
  /// [controlPlaneNodeConfiguration] The defining characteristics of the control plane for this Kubernetes Cluster.
  /// [detailedStatus] The current status of the Kubernetes cluster.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [featureStatuses] The current feature settings.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [initialAgentPoolConfigurations] The agent pools that are created with this Kubernetes cluster for running critical system services and workloads. This data in this field is only used during creation, and the field will be empty following the creation of the Kubernetes Cluster. After creation, the management of agent pools is done using the agentPools sub-resource.
  /// [kubernetesVersion] The Kubernetes version for this cluster.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] The configuration of the managed resource group associated with the resource.
  /// [name] The name of the resource
  /// [networkConfiguration] The configuration of the Kubernetes cluster networking, including the attachment of networks that span the cluster.
  /// [nodes] The details of the nodes in this cluster.
  /// [provisioningState] The provisioning state of the Kubernetes cluster resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetKubernetesClusterResult({
    this.aadConfiguration,
    this.administratorConfiguration,
    required this.attachedNetworkIds,
    required this.availableUpgrades,
    required this.azureApiVersion,
    required this.clusterId,
    required this.connectedClusterId,
    required this.controlPlaneKubernetesVersion,
    required this.controlPlaneNodeConfiguration,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.featureStatuses,
    required this.id,
    required this.initialAgentPoolConfigurations,
    required this.kubernetesVersion,
    required this.location,
    this.managedResourceGroupConfiguration,
    required this.name,
    required this.networkConfiguration,
    required this.nodes,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadConfiguration': ?aadConfiguration?.toMap(),
      'administratorConfiguration': ?administratorConfiguration?.toMap(),
      'attachedNetworkIds': attachedNetworkIds,
      'availableUpgrades': pulumi.Input.encodeList<AvailableUpgradeResponse, Map<String, dynamic>>(availableUpgrades, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'clusterId': clusterId,
      'connectedClusterId': connectedClusterId,
      'controlPlaneKubernetesVersion': controlPlaneKubernetesVersion,
      'controlPlaneNodeConfiguration': controlPlaneNodeConfiguration.toMap(),
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'featureStatuses': pulumi.Input.encodeList<FeatureStatusResponse, Map<String, dynamic>>(featureStatuses, (value) => value.toMap()),
      'id': id,
      'initialAgentPoolConfigurations': pulumi.Input.encodeList<InitialAgentPoolConfigurationResponse, Map<String, dynamic>>(initialAgentPoolConfigurations, (value) => value.toMap()),
      'kubernetesVersion': kubernetesVersion,
      'location': location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration?.toMap(),
      'name': name,
      'networkConfiguration': networkConfiguration.toMap(),
      'nodes': pulumi.Input.encodeList<KubernetesClusterNodeResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetKubernetesClusterResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterResult(
      aadConfiguration: (() { final guardedValue = map['aadConfiguration']; if (guardedValue == null) return null; return AadConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      administratorConfiguration: (() { final guardedValue = map['administratorConfiguration']; if (guardedValue == null) return null; return AdministratorConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      attachedNetworkIds: (map['attachedNetworkIds'] as List).cast<String>(),
      availableUpgrades: pulumi.Input.decodeList<AvailableUpgradeResponse>(map['availableUpgrades']!, (value) => AvailableUpgradeResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterId: map['clusterId'] as String,
      connectedClusterId: map['connectedClusterId'] as String,
      controlPlaneKubernetesVersion: map['controlPlaneKubernetesVersion'] as String,
      controlPlaneNodeConfiguration: ControlPlaneNodeConfigurationResponse.fromMap((map['controlPlaneNodeConfiguration']! as Map).cast<String, dynamic>()),
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      featureStatuses: pulumi.Input.decodeList<FeatureStatusResponse>(map['featureStatuses']!, (value) => FeatureStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      initialAgentPoolConfigurations: pulumi.Input.decodeList<InitialAgentPoolConfigurationResponse>(map['initialAgentPoolConfigurations']!, (value) => InitialAgentPoolConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      kubernetesVersion: map['kubernetesVersion'] as String,
      location: map['location'] as String,
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return ManagedResourceGroupConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      networkConfiguration: NetworkConfigurationResponse.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>()),
      nodes: pulumi.Input.decodeList<KubernetesClusterNodeResponse>(map['nodes']!, (value) => KubernetesClusterNodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

