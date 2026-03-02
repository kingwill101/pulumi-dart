// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csp_workspace_admin_properties.dart';
import 'data_lake_storage_account_details.dart';
import 'encryption_details.dart';
import 'managed_identity.dart';
import 'managed_virtual_network_settings.dart';
import 'private_endpoint_connection_synapse.dart';
import 'purview_configuration.dart';
import 'virtual_network_profile.dart';
import 'workspace_repository_configuration.dart';

/// {@template pulumi_synapse_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_args_doc}
class WorkspaceArgs {
  /// Enable or Disable AzureADOnlyAuthentication on All Workspace subresource
  final pulumi.Input<bool>? azureADOnlyAuthentication;
  /// Initial workspace AAD admin properties for a CSP subscription
  final pulumi.Input<CspWorkspaceAdminProperties>? cspWorkspaceAdminProperties;
  /// Workspace default data lake storage account details
  final pulumi.Input<DataLakeStorageAccountDetails>? defaultDataLakeStorage;
  /// The encryption details of the workspace
  final pulumi.Input<EncryptionDetails>? encryption;
  /// Identity of the workspace
  final pulumi.Input<ManagedIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Workspace managed resource group. The resource group name uniquely identifies the resource group within the user subscriptionId. The resource group name must be no longer than 90 characters long, and must be alphanumeric characters (Char.IsLetterOrDigit()) and '-', '_', '(', ')' and'.'. Note that the name cannot end with '.'
  final pulumi.Input<String>? managedResourceGroupName;
  /// Setting this to 'default' will ensure that all compute for this workspace is in a virtual network managed on behalf of the user.
  final pulumi.Input<String>? managedVirtualNetwork;
  /// Managed Virtual Network Settings
  final pulumi.Input<ManagedVirtualNetworkSettings>? managedVirtualNetworkSettings;
  /// Private endpoint connections to the workspace
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionSynapse>>? privateEndpointConnections;
  /// Enable or Disable public network access to workspace
  final pulumi.Input<String>? publicNetworkAccess;
  /// Purview Configuration
  final pulumi.Input<PurviewConfiguration>? purviewConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Login for workspace SQL active directory administrator
  final pulumi.Input<String>? sqlAdministratorLogin;
  /// SQL administrator login password
  final pulumi.Input<String>? sqlAdministratorLoginPassword;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is trustedServiceBypassEnabled for the workspace
  final pulumi.Input<bool>? trustedServiceBypassEnabled;
  /// Virtual Network profile
  final pulumi.Input<VirtualNetworkProfile>? virtualNetworkProfile;
  /// The name of the workspace.
  final pulumi.Input<String>? workspaceName;
  /// Git integration settings
  final pulumi.Input<WorkspaceRepositoryConfiguration>? workspaceRepositoryConfiguration;

  /// Creates a new [WorkspaceArgs].
  /// [azureADOnlyAuthentication] Enable or Disable AzureADOnlyAuthentication on All Workspace subresource
  /// [cspWorkspaceAdminProperties] Initial workspace AAD admin properties for a CSP subscription
  /// [defaultDataLakeStorage] Workspace default data lake storage account details
  /// [encryption] The encryption details of the workspace
  /// [identity] Identity of the workspace
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupName] Workspace managed resource group. The resource group name uniquely identifies the resource group within the user subscriptionId. The resource group name must be no longer than 90 characters long, and must be alphanumeric characters (Char.IsLetterOrDigit()) and '-', '_', '(', ')' and'.'. Note that the name cannot end with '.'
  /// [managedVirtualNetwork] Setting this to 'default' will ensure that all compute for this workspace is in a virtual network managed on behalf of the user.
  /// [managedVirtualNetworkSettings] Managed Virtual Network Settings
  /// [privateEndpointConnections] Private endpoint connections to the workspace
  /// [publicNetworkAccess] Enable or Disable public network access to workspace
  /// [purviewConfiguration] Purview Configuration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlAdministratorLogin] Login for workspace SQL active directory administrator
  /// [sqlAdministratorLoginPassword] SQL administrator login password
  /// [tags] Resource tags.
  /// [trustedServiceBypassEnabled] Is trustedServiceBypassEnabled for the workspace
  /// [virtualNetworkProfile] Virtual Network profile
  /// [workspaceName] The name of the workspace.
  /// [workspaceRepositoryConfiguration] Git integration settings
  WorkspaceArgs({
    this.azureADOnlyAuthentication,
    this.cspWorkspaceAdminProperties,
    this.defaultDataLakeStorage,
    this.encryption,
    this.identity,
    this.location,
    this.managedResourceGroupName,
    this.managedVirtualNetwork,
    this.managedVirtualNetworkSettings,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.purviewConfiguration,
    required this.resourceGroupName,
    this.sqlAdministratorLogin,
    this.sqlAdministratorLoginPassword,
    this.tags,
    this.trustedServiceBypassEnabled,
    this.virtualNetworkProfile,
    this.workspaceName,
    this.workspaceRepositoryConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureADOnlyAuthentication': ?azureADOnlyAuthentication,
      'cspWorkspaceAdminProperties': ?pulumi.Input.mapOptionalInputValue<CspWorkspaceAdminProperties, Map<String, dynamic>>(cspWorkspaceAdminProperties, (value) => value.toMap()),
      'defaultDataLakeStorage': ?pulumi.Input.mapOptionalInputValue<DataLakeStorageAccountDetails, Map<String, dynamic>>(defaultDataLakeStorage, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionDetails, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedVirtualNetwork': ?managedVirtualNetwork,
      'managedVirtualNetworkSettings': ?pulumi.Input.mapOptionalInputValue<ManagedVirtualNetworkSettings, Map<String, dynamic>>(managedVirtualNetworkSettings, (value) => value.toMap()),
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purviewConfiguration': ?pulumi.Input.mapOptionalInputValue<PurviewConfiguration, Map<String, dynamic>>(purviewConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlAdministratorLogin': ?sqlAdministratorLogin,
      'sqlAdministratorLoginPassword': ?sqlAdministratorLoginPassword,
      'tags': ?tags,
      'trustedServiceBypassEnabled': ?trustedServiceBypassEnabled,
      'virtualNetworkProfile': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkProfile, Map<String, dynamic>>(virtualNetworkProfile, (value) => value.toMap()),
      'workspaceName': ?workspaceName,
      'workspaceRepositoryConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkspaceRepositoryConfiguration, Map<String, dynamic>>(workspaceRepositoryConfiguration, (value) => value.toMap()),
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      azureADOnlyAuthentication: map['azureADOnlyAuthentication'] == null ? null : (map['azureADOnlyAuthentication'] as bool).input(),
      cspWorkspaceAdminProperties: map['cspWorkspaceAdminProperties'] == null ? null : (CspWorkspaceAdminProperties.fromMap((map['cspWorkspaceAdminProperties'] as Map).cast<String, dynamic>())).input(),
      defaultDataLakeStorage: map['defaultDataLakeStorage'] == null ? null : (DataLakeStorageAccountDetails.fromMap((map['defaultDataLakeStorage'] as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (EncryptionDetails.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName'] as String).input(),
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : (map['managedVirtualNetwork'] as String).input(),
      managedVirtualNetworkSettings: map['managedVirtualNetworkSettings'] == null ? null : (ManagedVirtualNetworkSettings.fromMap((map['managedVirtualNetworkSettings'] as Map).cast<String, dynamic>())).input(),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : ((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionSynapse>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      purviewConfiguration: map['purviewConfiguration'] == null ? null : (PurviewConfiguration.fromMap((map['purviewConfiguration'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlAdministratorLogin: map['sqlAdministratorLogin'] == null ? null : (map['sqlAdministratorLogin'] as String).input(),
      sqlAdministratorLoginPassword: map['sqlAdministratorLoginPassword'] == null ? null : (map['sqlAdministratorLoginPassword'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trustedServiceBypassEnabled: map['trustedServiceBypassEnabled'] == null ? null : (map['trustedServiceBypassEnabled'] as bool).input(),
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : (VirtualNetworkProfile.fromMap((map['virtualNetworkProfile'] as Map).cast<String, dynamic>())).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName'] as String).input(),
      workspaceRepositoryConfiguration: map['workspaceRepositoryConfiguration'] == null ? null : (WorkspaceRepositoryConfiguration.fromMap((map['workspaceRepositoryConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

