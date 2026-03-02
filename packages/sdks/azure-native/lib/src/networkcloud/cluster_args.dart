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
    required this.aggregatorOrSingleRackDefinition,
    this.analyticsOutputSettings,
    this.analyticsWorkspaceId,
    this.clusterLocation,
    this.clusterName,
    this.clusterServicePrincipal,
    required this.clusterType,
    required this.clusterVersion,
    this.commandOutputSettings,
    this.computeDeploymentThreshold,
    this.computeRackDefinitions,
    required this.extendedLocation,
    this.identity,
    this.location,
    this.managedResourceGroupConfiguration,
    required this.networkFabricId,
    required this.resourceGroupName,
    this.runtimeProtectionConfiguration,
    this.secretArchive,
    this.secretArchiveSettings,
    this.tags,
    this.updateStrategy,
    this.vulnerabilityScanningSettings,
  });

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
      aggregatorOrSingleRackDefinition: (RackDefinition.fromMap((map['aggregatorOrSingleRackDefinition'] as Map).cast<String, dynamic>())).input(),
      analyticsOutputSettings: map['analyticsOutputSettings'] == null ? null : (AnalyticsOutputSettings.fromMap((map['analyticsOutputSettings'] as Map).cast<String, dynamic>())).input(),
      analyticsWorkspaceId: map['analyticsWorkspaceId'] == null ? null : (map['analyticsWorkspaceId'] as String).input(),
      clusterLocation: map['clusterLocation'] == null ? null : (map['clusterLocation'] as String).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      clusterServicePrincipal: map['clusterServicePrincipal'] == null ? null : (ServicePrincipalInformation.fromMap((map['clusterServicePrincipal'] as Map).cast<String, dynamic>())).input(),
      clusterType: (map['clusterType'] as String).input(),
      clusterVersion: (map['clusterVersion'] as String).input(),
      commandOutputSettings: map['commandOutputSettings'] == null ? null : (CommandOutputSettings.fromMap((map['commandOutputSettings'] as Map).cast<String, dynamic>())).input(),
      computeDeploymentThreshold: map['computeDeploymentThreshold'] == null ? null : (ValidationThreshold.fromMap((map['computeDeploymentThreshold'] as Map).cast<String, dynamic>())).input(),
      computeRackDefinitions: map['computeRackDefinitions'] == null ? null : (pulumi.Input.decodeList<RackDefinition>(map['computeRackDefinitions'], (value) => RackDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : (ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())).input(),
      networkFabricId: (map['networkFabricId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runtimeProtectionConfiguration: map['runtimeProtectionConfiguration'] == null ? null : (RuntimeProtectionConfiguration.fromMap((map['runtimeProtectionConfiguration'] as Map).cast<String, dynamic>())).input(),
      secretArchive: map['secretArchive'] == null ? null : (ClusterSecretArchive.fromMap((map['secretArchive'] as Map).cast<String, dynamic>())).input(),
      secretArchiveSettings: map['secretArchiveSettings'] == null ? null : (SecretArchiveSettings.fromMap((map['secretArchiveSettings'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      updateStrategy: map['updateStrategy'] == null ? null : (ClusterUpdateStrategy.fromMap((map['updateStrategy'] as Map).cast<String, dynamic>())).input(),
      vulnerabilityScanningSettings: map['vulnerabilityScanningSettings'] == null ? null : (VulnerabilityScanningSettings.fromMap((map['vulnerabilityScanningSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

