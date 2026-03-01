// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_output_settings.dart';
import 'cluster_secret_archive.dart';
import 'cluster_update_strategy.dart';
import 'command_output_settings.dart';
import 'extended_location.dart';
import 'managed_resource_group_configuration.dart';
import 'managed_service_identity.dart';
import 'rack_definition.dart';
import 'runtime_protection_configuration.dart';
import 'secret_archive_settings.dart';
import 'service_principal_information.dart';
import 'validation_threshold.dart';
import 'vulnerability_scanning_settings.dart';

/// {@template pulumi_networkcloud_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_cluster_args_doc}
class ClusterArgs {
  /// The rack definition that is intended to reflect only a single rack in a single rack cluster, or an aggregator rack in a multi-rack cluster.
  final pulumi.Input<RackDefinition> aggregatorOrSingleRackDefinition;
  /// The settings for the log analytics workspace used for output of logs from this cluster.
  final pulumi.Input<AnalyticsOutputSettings>? analyticsOutputSettings;
  /// Field Deprecated. The resource ID of the Log Analytics Workspace that will be used for storing relevant logs.
  final pulumi.Input<String>? analyticsWorkspaceId;
  /// The customer-provided location information to identify where the cluster resides.
  final pulumi.Input<String>? clusterLocation;
  /// The name of the cluster.
  final pulumi.Input<String>? clusterName;
  /// The service principal to be used by the cluster during Arc Appliance installation.
  final pulumi.Input<ServicePrincipalInformation>? clusterServicePrincipal;
  /// The type of rack configuration for the cluster.
  final pulumi.Input<String> clusterType;
  /// The current runtime version of the cluster.
  final pulumi.Input<String> clusterVersion;
  /// The settings for commands run in this cluster, such as bare metal machine run read only commands and data extracts.
  final pulumi.Input<CommandOutputSettings>? commandOutputSettings;
  /// The validation threshold indicating the allowable failures of compute machines during environment validation and deployment.
  final pulumi.Input<ValidationThreshold>? computeDeploymentThreshold;
  /// The list of rack definitions for the compute racks in a multi-rack
  /// cluster, or an empty list in a single-rack cluster.
  final pulumi.Input<List<RackDefinition>>? computeRackDefinitions;
  /// The extended location of the cluster manager associated with the cluster.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The identity for the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The configuration of the managed resource group associated with the resource.
  final pulumi.Input<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
  /// The resource ID of the Network Fabric associated with the cluster.
  final pulumi.Input<String> networkFabricId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The settings for cluster runtime protection.
  final pulumi.Input<RuntimeProtectionConfiguration>? runtimeProtectionConfiguration;
  /// The configuration for use of a key vault to store secrets for later retrieval by the operator.
  final pulumi.Input<ClusterSecretArchive>? secretArchive;
  /// The settings for the secret archive used to hold credentials for the cluster.
  final pulumi.Input<SecretArchiveSettings>? secretArchiveSettings;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The strategy for updating the cluster.
  final pulumi.Input<ClusterUpdateStrategy>? updateStrategy;
  /// The settings for how security vulnerability scanning is applied to the cluster.
  final pulumi.Input<VulnerabilityScanningSettings>? vulnerabilityScanningSettings;

  /// Creates a new [ClusterArgs].
  /// [aggregatorOrSingleRackDefinition] The rack definition that is intended to reflect only a single rack in a single rack cluster, or an aggregator rack in a multi-rack cluster.
  /// [analyticsOutputSettings] The settings for the log analytics workspace used for output of logs from this cluster.
  /// [analyticsWorkspaceId] Field Deprecated. The resource ID of the Log Analytics Workspace that will be used for storing relevant logs.
  /// [clusterLocation] The customer-provided location information to identify where the cluster resides.
  /// [clusterName] The name of the cluster.
  /// [clusterServicePrincipal] The service principal to be used by the cluster during Arc Appliance installation.
  /// [clusterType] The type of rack configuration for the cluster.
  /// [clusterVersion] The current runtime version of the cluster.
  /// [commandOutputSettings] The settings for commands run in this cluster, such as bare metal machine run read only commands and data extracts.
  /// [computeDeploymentThreshold] The validation threshold indicating the allowable failures of compute machines during environment validation and deployment.
  /// [computeRackDefinitions] The list of rack definitions for the compute racks in a multi-rack
  /// [extendedLocation] The extended location of the cluster manager associated with the cluster.
  /// [identity] The identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] The configuration of the managed resource group associated with the resource.
  /// [networkFabricId] The resource ID of the Network Fabric associated with the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runtimeProtectionConfiguration] The settings for cluster runtime protection.
  /// [secretArchive] The configuration for use of a key vault to store secrets for later retrieval by the operator.
  /// [secretArchiveSettings] The settings for the secret archive used to hold credentials for the cluster.
  /// [tags] Resource tags.
  /// [updateStrategy] The strategy for updating the cluster.
  /// [vulnerabilityScanningSettings] The settings for how security vulnerability scanning is applied to the cluster.
  ClusterArgs({
    required pulumi.Output<RackDefinition> aggregatorOrSingleRackDefinition,
    pulumi.Output<AnalyticsOutputSettings>? analyticsOutputSettings,
    pulumi.Output<String>? analyticsWorkspaceId,
    pulumi.Output<String>? clusterLocation,
    pulumi.Output<String>? clusterName,
    pulumi.Output<ServicePrincipalInformation>? clusterServicePrincipal,
    required pulumi.Output<String> clusterType,
    required pulumi.Output<String> clusterVersion,
    pulumi.Output<CommandOutputSettings>? commandOutputSettings,
    pulumi.Output<ValidationThreshold>? computeDeploymentThreshold,
    pulumi.Output<List<RackDefinition>>? computeRackDefinitions,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration,
    required pulumi.Output<String> networkFabricId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<RuntimeProtectionConfiguration>? runtimeProtectionConfiguration,
    pulumi.Output<ClusterSecretArchive>? secretArchive,
    pulumi.Output<SecretArchiveSettings>? secretArchiveSettings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ClusterUpdateStrategy>? updateStrategy,
    pulumi.Output<VulnerabilityScanningSettings>? vulnerabilityScanningSettings,
  }) :
      aggregatorOrSingleRackDefinition = pulumi.Input.asInput<RackDefinition>(aggregatorOrSingleRackDefinition),
      analyticsOutputSettings = pulumi.Input.asOptionalInput<AnalyticsOutputSettings>(analyticsOutputSettings),
      analyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(analyticsWorkspaceId),
      clusterLocation = pulumi.Input.asOptionalInput<String>(clusterLocation),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterServicePrincipal = pulumi.Input.asOptionalInput<ServicePrincipalInformation>(clusterServicePrincipal),
      clusterType = pulumi.Input.asInput<String>(clusterType),
      clusterVersion = pulumi.Input.asInput<String>(clusterVersion),
      commandOutputSettings = pulumi.Input.asOptionalInput<CommandOutputSettings>(commandOutputSettings),
      computeDeploymentThreshold = pulumi.Input.asOptionalInput<ValidationThreshold>(computeDeploymentThreshold),
      computeRackDefinitions = pulumi.Input.asOptionalInput<List<RackDefinition>>(computeRackDefinitions),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedResourceGroupConfiguration>(managedResourceGroupConfiguration),
      networkFabricId = pulumi.Input.asInput<String>(networkFabricId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runtimeProtectionConfiguration = pulumi.Input.asOptionalInput<RuntimeProtectionConfiguration>(runtimeProtectionConfiguration),
      secretArchive = pulumi.Input.asOptionalInput<ClusterSecretArchive>(secretArchive),
      secretArchiveSettings = pulumi.Input.asOptionalInput<SecretArchiveSettings>(secretArchiveSettings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      updateStrategy = pulumi.Input.asOptionalInput<ClusterUpdateStrategy>(updateStrategy),
      vulnerabilityScanningSettings = pulumi.Input.asOptionalInput<VulnerabilityScanningSettings>(vulnerabilityScanningSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorOrSingleRackDefinition': pulumi.Input.mapInputValue<RackDefinition, Map<String, dynamic>>(aggregatorOrSingleRackDefinition, (value) => value.toMap()),
      'analyticsOutputSettings': ?pulumi.Input.mapOptionalInputValue<AnalyticsOutputSettings, Map<String, dynamic>>(analyticsOutputSettings, (value) => value.toMap()),
      'analyticsWorkspaceId': ?analyticsWorkspaceId,
      'clusterLocation': ?clusterLocation,
      'clusterName': ?clusterName,
      'clusterServicePrincipal': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalInformation, Map<String, dynamic>>(clusterServicePrincipal, (value) => value.toMap()),
      'clusterType': clusterType,
      'clusterVersion': clusterVersion,
      'commandOutputSettings': ?pulumi.Input.mapOptionalInputValue<CommandOutputSettings, Map<String, dynamic>>(commandOutputSettings, (value) => value.toMap()),
      'computeDeploymentThreshold': ?pulumi.Input.mapOptionalInputValue<ValidationThreshold, Map<String, dynamic>>(computeDeploymentThreshold, (value) => value.toMap()),
      'computeRackDefinitions': ?pulumi.Input.mapOptionalInputValue<List<RackDefinition>, List<Map<String, dynamic>>>(computeRackDefinitions, (value) => pulumi.Input.encodeList<RackDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'networkFabricId': networkFabricId,
      'resourceGroupName': resourceGroupName,
      'runtimeProtectionConfiguration': ?pulumi.Input.mapOptionalInputValue<RuntimeProtectionConfiguration, Map<String, dynamic>>(runtimeProtectionConfiguration, (value) => value.toMap()),
      'secretArchive': ?pulumi.Input.mapOptionalInputValue<ClusterSecretArchive, Map<String, dynamic>>(secretArchive, (value) => value.toMap()),
      'secretArchiveSettings': ?pulumi.Input.mapOptionalInputValue<SecretArchiveSettings, Map<String, dynamic>>(secretArchiveSettings, (value) => value.toMap()),
      'tags': ?tags,
      'updateStrategy': ?pulumi.Input.mapOptionalInputValue<ClusterUpdateStrategy, Map<String, dynamic>>(updateStrategy, (value) => value.toMap()),
      'vulnerabilityScanningSettings': ?pulumi.Input.mapOptionalInputValue<VulnerabilityScanningSettings, Map<String, dynamic>>(vulnerabilityScanningSettings, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      aggregatorOrSingleRackDefinition: pulumi.Output.create<RackDefinition>(RackDefinition.fromMap((map['aggregatorOrSingleRackDefinition'] as Map).cast<String, dynamic>())),
      analyticsOutputSettings: map['analyticsOutputSettings'] == null ? null : pulumi.Output.create<AnalyticsOutputSettings>(AnalyticsOutputSettings.fromMap((map['analyticsOutputSettings'] as Map).cast<String, dynamic>())),
      analyticsWorkspaceId: map['analyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['analyticsWorkspaceId'] as String),
      clusterLocation: map['clusterLocation'] == null ? null : pulumi.Output.create<String>(map['clusterLocation'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterServicePrincipal: map['clusterServicePrincipal'] == null ? null : pulumi.Output.create<ServicePrincipalInformation>(ServicePrincipalInformation.fromMap((map['clusterServicePrincipal'] as Map).cast<String, dynamic>())),
      clusterType: pulumi.Output.create<String>(map['clusterType'] as String),
      clusterVersion: pulumi.Output.create<String>(map['clusterVersion'] as String),
      commandOutputSettings: map['commandOutputSettings'] == null ? null : pulumi.Output.create<CommandOutputSettings>(CommandOutputSettings.fromMap((map['commandOutputSettings'] as Map).cast<String, dynamic>())),
      computeDeploymentThreshold: map['computeDeploymentThreshold'] == null ? null : pulumi.Output.create<ValidationThreshold>(ValidationThreshold.fromMap((map['computeDeploymentThreshold'] as Map).cast<String, dynamic>())),
      computeRackDefinitions: map['computeRackDefinitions'] == null ? null : pulumi.Output.create<List<RackDefinition>>(pulumi.Input.decodeList<RackDefinition>(map['computeRackDefinitions'], (value) => RackDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : pulumi.Output.create<ManagedResourceGroupConfiguration>(ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())),
      networkFabricId: pulumi.Output.create<String>(map['networkFabricId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runtimeProtectionConfiguration: map['runtimeProtectionConfiguration'] == null ? null : pulumi.Output.create<RuntimeProtectionConfiguration>(RuntimeProtectionConfiguration.fromMap((map['runtimeProtectionConfiguration'] as Map).cast<String, dynamic>())),
      secretArchive: map['secretArchive'] == null ? null : pulumi.Output.create<ClusterSecretArchive>(ClusterSecretArchive.fromMap((map['secretArchive'] as Map).cast<String, dynamic>())),
      secretArchiveSettings: map['secretArchiveSettings'] == null ? null : pulumi.Output.create<SecretArchiveSettings>(SecretArchiveSettings.fromMap((map['secretArchiveSettings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      updateStrategy: map['updateStrategy'] == null ? null : pulumi.Output.create<ClusterUpdateStrategy>(ClusterUpdateStrategy.fromMap((map['updateStrategy'] as Map).cast<String, dynamic>())),
      vulnerabilityScanningSettings: map['vulnerabilityScanningSettings'] == null ? null : pulumi.Output.create<VulnerabilityScanningSettings>(VulnerabilityScanningSettings.fromMap((map['vulnerabilityScanningSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

