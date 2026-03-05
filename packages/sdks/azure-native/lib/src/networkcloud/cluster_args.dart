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
      aggregatorOrSingleRackDefinition: pulumi.Input.fromValue(RackDefinition.fromMap((map['aggregatorOrSingleRackDefinition']! as Map).cast<String, dynamic>())),
      analyticsOutputSettings: (() { final guardedValue = map['analyticsOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analyticsWorkspaceId: (() { final guardedValue = map['analyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterLocation: (() { final guardedValue = map['clusterLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterServicePrincipal: (() { final guardedValue = map['clusterServicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePrincipalInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      clusterVersion: pulumi.Input.fromValue(map['clusterVersion'] as String),
      commandOutputSettings: (() { final guardedValue = map['commandOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommandOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeDeploymentThreshold: (() { final guardedValue = map['computeDeploymentThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValidationThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeRackDefinitions: (() { final guardedValue = map['computeRackDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RackDefinition>(guardedValue, (value) => RackDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedResourceGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkFabricId: pulumi.Input.fromValue(map['networkFabricId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runtimeProtectionConfiguration: (() { final guardedValue = map['runtimeProtectionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeProtectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretArchive: (() { final guardedValue = map['secretArchive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSecretArchive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretArchiveSettings: (() { final guardedValue = map['secretArchiveSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretArchiveSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterUpdateStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerabilityScanningSettings: (() { final guardedValue = map['vulnerabilityScanningSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityScanningSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

