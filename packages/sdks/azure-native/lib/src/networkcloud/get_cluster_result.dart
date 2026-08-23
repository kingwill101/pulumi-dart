// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_output_settings_response.dart';
import 'cluster_available_upgrade_version_response.dart';
import 'cluster_capacity_response.dart';
import 'cluster_secret_archive_response.dart';
import 'cluster_update_strategy_response.dart';
import 'command_output_settings_response.dart';
import 'extended_location_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'rack_definition_response.dart';
import 'runtime_protection_configuration_response.dart';
import 'secret_archive_settings_response.dart';
import 'service_principal_information_response.dart';
import 'system_data_response.dart';
import 'validation_threshold_response.dart';
import 'vulnerability_scanning_settings_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The rack definition that is intended to reflect only a single rack in a single rack cluster, or an aggregator rack in a multi-rack cluster.
  final RackDefinitionResponse aggregatorOrSingleRackDefinition;
  /// The settings for the log analytics workspace used for output of logs from this cluster.
  final AnalyticsOutputSettingsResponse? analyticsOutputSettings;
  /// Field Deprecated. The resource ID of the Log Analytics Workspace that will be used for storing relevant logs.
  final String? analyticsWorkspaceId;
  /// The list of cluster runtime version upgrades available for this cluster.
  final List<ClusterAvailableUpgradeVersionResponse> availableUpgradeVersions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The capacity supported by this cluster.
  final ClusterCapacityResponse clusterCapacity;
  /// The latest heartbeat status between the cluster manager and the cluster.
  final String clusterConnectionStatus;
  /// The extended location (custom location) that represents the cluster's control plane location. This extended location is used to route the requests of child objects of the cluster that are handled by the platform operator.
  final ExtendedLocationResponse clusterExtendedLocation;
  /// The customer-provided location information to identify where the cluster resides.
  final String? clusterLocation;
  /// The latest connectivity status between cluster manager and the cluster.
  final String clusterManagerConnectionStatus;
  /// The resource ID of the cluster manager that manages this cluster. This is set by the Cluster Manager when the cluster is created.
  final String clusterManagerId;
  /// The service principal to be used by the cluster during Arc Appliance installation.
  final ServicePrincipalInformationResponse? clusterServicePrincipal;
  /// The type of rack configuration for the cluster.
  final String clusterType;
  /// The current runtime version of the cluster.
  final String clusterVersion;
  /// The settings for commands run in this cluster, such as bare metal machine run read only commands and data extracts.
  final CommandOutputSettingsResponse? commandOutputSettings;
  /// The validation threshold indicating the allowable failures of compute machines during environment validation and deployment.
  final ValidationThresholdResponse? computeDeploymentThreshold;
  /// The list of rack definitions for the compute racks in a multi-rack
  /// cluster, or an empty list in a single-rack cluster.
  final List<RackDefinitionResponse>? computeRackDefinitions;
  /// The current detailed status of the cluster.
  final String detailedStatus;
  /// The descriptive message about the detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster manager associated with the cluster.
  final ExtendedLocationResponse extendedLocation;
  /// Field Deprecated. This field will not be populated in an upcoming version. The extended location (custom location) that represents the Hybrid AKS control plane location. This extended location is used when creating provisioned clusters (Hybrid AKS clusters).
  final ExtendedLocationResponse hybridAksExtendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The identity for the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The configuration of the managed resource group associated with the resource.
  final ManagedResourceGroupConfigurationResponse? managedResourceGroupConfiguration;
  /// The count of Manual Action Taken (MAT) events that have not been validated.
  final double manualActionCount;
  /// The name of the resource
  final String name;
  /// The resource ID of the Network Fabric associated with the cluster.
  final String networkFabricId;
  /// The provisioning state of the cluster.
  final String provisioningState;
  /// The settings for cluster runtime protection.
  final RuntimeProtectionConfigurationResponse? runtimeProtectionConfiguration;
  /// The configuration for use of a key vault to store secrets for later retrieval by the operator.
  final ClusterSecretArchiveResponse? secretArchive;
  /// The settings for the secret archive used to hold credentials for the cluster.
  final SecretArchiveSettingsResponse? secretArchiveSettings;
  /// The support end date of the runtime version of the cluster.
  final String supportExpiryDate;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The strategy for updating the cluster.
  final ClusterUpdateStrategyResponse? updateStrategy;
  /// The settings for how security vulnerability scanning is applied to the cluster.
  final VulnerabilityScanningSettingsResponse? vulnerabilityScanningSettings;
  /// The list of workload resource IDs that are hosted within this cluster.
  final List<String> workloadResourceIds;

  /// Creates a new [GetClusterResult].
  /// [aggregatorOrSingleRackDefinition] The rack definition that is intended to reflect only a single rack in a single rack cluster, or an aggregator rack in a multi-rack cluster.
  /// [analyticsOutputSettings] The settings for the log analytics workspace used for output of logs from this cluster.
  /// [analyticsWorkspaceId] Field Deprecated. The resource ID of the Log Analytics Workspace that will be used for storing relevant logs.
  /// [availableUpgradeVersions] The list of cluster runtime version upgrades available for this cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterCapacity] The capacity supported by this cluster.
  /// [clusterConnectionStatus] The latest heartbeat status between the cluster manager and the cluster.
  /// [clusterExtendedLocation] The extended location (custom location) that represents the cluster's control plane location. This extended location is used to route the requests of child objects of the cluster that are handled by the platform operator.
  /// [clusterLocation] The customer-provided location information to identify where the cluster resides.
  /// [clusterManagerConnectionStatus] The latest connectivity status between cluster manager and the cluster.
  /// [clusterManagerId] The resource ID of the cluster manager that manages this cluster. This is set by the Cluster Manager when the cluster is created.
  /// [clusterServicePrincipal] The service principal to be used by the cluster during Arc Appliance installation.
  /// [clusterType] The type of rack configuration for the cluster.
  /// [clusterVersion] The current runtime version of the cluster.
  /// [commandOutputSettings] The settings for commands run in this cluster, such as bare metal machine run read only commands and data extracts.
  /// [computeDeploymentThreshold] The validation threshold indicating the allowable failures of compute machines during environment validation and deployment.
  /// [computeRackDefinitions] The list of rack definitions for the compute racks in a multi-rack
  /// [detailedStatus] The current detailed status of the cluster.
  /// [detailedStatusMessage] The descriptive message about the detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster manager associated with the cluster.
  /// [hybridAksExtendedLocation] Field Deprecated. This field will not be populated in an upcoming version. The extended location (custom location) that represents the Hybrid AKS control plane location. This extended location is used when creating provisioned clusters (Hybrid AKS clusters).
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] The configuration of the managed resource group associated with the resource.
  /// [manualActionCount] The count of Manual Action Taken (MAT) events that have not been validated.
  /// [name] The name of the resource
  /// [networkFabricId] The resource ID of the Network Fabric associated with the cluster.
  /// [provisioningState] The provisioning state of the cluster.
  /// [runtimeProtectionConfiguration] The settings for cluster runtime protection.
  /// [secretArchive] The configuration for use of a key vault to store secrets for later retrieval by the operator.
  /// [secretArchiveSettings] The settings for the secret archive used to hold credentials for the cluster.
  /// [supportExpiryDate] The support end date of the runtime version of the cluster.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateStrategy] The strategy for updating the cluster.
  /// [vulnerabilityScanningSettings] The settings for how security vulnerability scanning is applied to the cluster.
  /// [workloadResourceIds] The list of workload resource IDs that are hosted within this cluster.
  const GetClusterResult({
    required this.aggregatorOrSingleRackDefinition,
    this.analyticsOutputSettings,
    this.analyticsWorkspaceId,
    required this.availableUpgradeVersions,
    required this.azureApiVersion,
    required this.clusterCapacity,
    required this.clusterConnectionStatus,
    required this.clusterExtendedLocation,
    this.clusterLocation,
    required this.clusterManagerConnectionStatus,
    required this.clusterManagerId,
    this.clusterServicePrincipal,
    required this.clusterType,
    required this.clusterVersion,
    this.commandOutputSettings,
    this.computeDeploymentThreshold,
    this.computeRackDefinitions,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.hybridAksExtendedLocation,
    required this.id,
    this.identity,
    required this.location,
    this.managedResourceGroupConfiguration,
    required this.manualActionCount,
    required this.name,
    required this.networkFabricId,
    required this.provisioningState,
    this.runtimeProtectionConfiguration,
    this.secretArchive,
    this.secretArchiveSettings,
    required this.supportExpiryDate,
    required this.systemData,
    this.tags,
    required this.type,
    this.updateStrategy,
    this.vulnerabilityScanningSettings,
    required this.workloadResourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorOrSingleRackDefinition': aggregatorOrSingleRackDefinition.toMap(),
      'analyticsOutputSettings': ?analyticsOutputSettings?.toMap(),
      'analyticsWorkspaceId': ?analyticsWorkspaceId,
      'availableUpgradeVersions': pulumi.Input.encodeList<ClusterAvailableUpgradeVersionResponse, Map<String, dynamic>>(availableUpgradeVersions, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'clusterCapacity': clusterCapacity.toMap(),
      'clusterConnectionStatus': clusterConnectionStatus,
      'clusterExtendedLocation': clusterExtendedLocation.toMap(),
      'clusterLocation': ?clusterLocation,
      'clusterManagerConnectionStatus': clusterManagerConnectionStatus,
      'clusterManagerId': clusterManagerId,
      'clusterServicePrincipal': ?clusterServicePrincipal?.toMap(),
      'clusterType': clusterType,
      'clusterVersion': clusterVersion,
      'commandOutputSettings': ?commandOutputSettings?.toMap(),
      'computeDeploymentThreshold': ?computeDeploymentThreshold?.toMap(),
      'computeRackDefinitions': ?(() { final guardedValue = computeRackDefinitions; if (guardedValue == null) return null; return pulumi.Input.encodeList<RackDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'hybridAksExtendedLocation': hybridAksExtendedLocation.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration?.toMap(),
      'manualActionCount': manualActionCount,
      'name': name,
      'networkFabricId': networkFabricId,
      'provisioningState': provisioningState,
      'runtimeProtectionConfiguration': ?runtimeProtectionConfiguration?.toMap(),
      'secretArchive': ?secretArchive?.toMap(),
      'secretArchiveSettings': ?secretArchiveSettings?.toMap(),
      'supportExpiryDate': supportExpiryDate,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updateStrategy': ?updateStrategy?.toMap(),
      'vulnerabilityScanningSettings': ?vulnerabilityScanningSettings?.toMap(),
      'workloadResourceIds': workloadResourceIds,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      aggregatorOrSingleRackDefinition: RackDefinitionResponse.fromMap((map['aggregatorOrSingleRackDefinition']! as Map).cast<String, dynamic>()),
      analyticsOutputSettings: (() { final guardedValue = map['analyticsOutputSettings']; if (guardedValue == null) return null; return AnalyticsOutputSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      analyticsWorkspaceId: (() { final guardedValue = map['analyticsWorkspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableUpgradeVersions: pulumi.Input.decodeList<ClusterAvailableUpgradeVersionResponse>(map['availableUpgradeVersions']!, (value) => ClusterAvailableUpgradeVersionResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterCapacity: ClusterCapacityResponse.fromMap((map['clusterCapacity']! as Map).cast<String, dynamic>()),
      clusterConnectionStatus: map['clusterConnectionStatus'] as String,
      clusterExtendedLocation: ExtendedLocationResponse.fromMap((map['clusterExtendedLocation']! as Map).cast<String, dynamic>()),
      clusterLocation: (() { final guardedValue = map['clusterLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterManagerConnectionStatus: map['clusterManagerConnectionStatus'] as String,
      clusterManagerId: map['clusterManagerId'] as String,
      clusterServicePrincipal: (() { final guardedValue = map['clusterServicePrincipal']; if (guardedValue == null) return null; return ServicePrincipalInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterType: map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] as String,
      commandOutputSettings: (() { final guardedValue = map['commandOutputSettings']; if (guardedValue == null) return null; return CommandOutputSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeDeploymentThreshold: (() { final guardedValue = map['computeDeploymentThreshold']; if (guardedValue == null) return null; return ValidationThresholdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeRackDefinitions: (() { final guardedValue = map['computeRackDefinitions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RackDefinitionResponse>(guardedValue, (value) => RackDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      hybridAksExtendedLocation: ExtendedLocationResponse.fromMap((map['hybridAksExtendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return ManagedResourceGroupConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      manualActionCount: map['manualActionCount'] as double,
      name: map['name'] as String,
      networkFabricId: map['networkFabricId'] as String,
      provisioningState: map['provisioningState'] as String,
      runtimeProtectionConfiguration: (() { final guardedValue = map['runtimeProtectionConfiguration']; if (guardedValue == null) return null; return RuntimeProtectionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      secretArchive: (() { final guardedValue = map['secretArchive']; if (guardedValue == null) return null; return ClusterSecretArchiveResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      secretArchiveSettings: (() { final guardedValue = map['secretArchiveSettings']; if (guardedValue == null) return null; return SecretArchiveSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportExpiryDate: map['supportExpiryDate'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return ClusterUpdateStrategyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vulnerabilityScanningSettings: (() { final guardedValue = map['vulnerabilityScanningSettings']; if (guardedValue == null) return null; return VulnerabilityScanningSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workloadResourceIds: (map['workloadResourceIds'] as List).cast<String>(),
    );
  }
}
