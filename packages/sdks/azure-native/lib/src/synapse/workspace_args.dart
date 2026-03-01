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
    pulumi.Output<bool>? azureADOnlyAuthentication,
    pulumi.Output<CspWorkspaceAdminProperties>? cspWorkspaceAdminProperties,
    pulumi.Output<DataLakeStorageAccountDetails>? defaultDataLakeStorage,
    pulumi.Output<EncryptionDetails>? encryption,
    pulumi.Output<ManagedIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<String>? managedVirtualNetwork,
    pulumi.Output<ManagedVirtualNetworkSettings>? managedVirtualNetworkSettings,
    pulumi.Output<List<PrivateEndpointConnectionSynapse>>? privateEndpointConnections,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<PurviewConfiguration>? purviewConfiguration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlAdministratorLogin,
    pulumi.Output<String>? sqlAdministratorLoginPassword,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? trustedServiceBypassEnabled,
    pulumi.Output<VirtualNetworkProfile>? virtualNetworkProfile,
    pulumi.Output<String>? workspaceName,
    pulumi.Output<WorkspaceRepositoryConfiguration>? workspaceRepositoryConfiguration,
  }) :
      azureADOnlyAuthentication = pulumi.Input.asOptionalInput<bool>(azureADOnlyAuthentication),
      cspWorkspaceAdminProperties = pulumi.Input.asOptionalInput<CspWorkspaceAdminProperties>(cspWorkspaceAdminProperties),
      defaultDataLakeStorage = pulumi.Input.asOptionalInput<DataLakeStorageAccountDetails>(defaultDataLakeStorage),
      encryption = pulumi.Input.asOptionalInput<EncryptionDetails>(encryption),
      identity = pulumi.Input.asOptionalInput<ManagedIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      managedVirtualNetwork = pulumi.Input.asOptionalInput<String>(managedVirtualNetwork),
      managedVirtualNetworkSettings = pulumi.Input.asOptionalInput<ManagedVirtualNetworkSettings>(managedVirtualNetworkSettings),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionSynapse>>(privateEndpointConnections),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      purviewConfiguration = pulumi.Input.asOptionalInput<PurviewConfiguration>(purviewConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlAdministratorLogin = pulumi.Input.asOptionalInput<String>(sqlAdministratorLogin),
      sqlAdministratorLoginPassword = pulumi.Input.asOptionalInput<String>(sqlAdministratorLoginPassword),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustedServiceBypassEnabled = pulumi.Input.asOptionalInput<bool>(trustedServiceBypassEnabled),
      virtualNetworkProfile = pulumi.Input.asOptionalInput<VirtualNetworkProfile>(virtualNetworkProfile),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName),
      workspaceRepositoryConfiguration = pulumi.Input.asOptionalInput<WorkspaceRepositoryConfiguration>(workspaceRepositoryConfiguration);

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
      azureADOnlyAuthentication: map['azureADOnlyAuthentication'] == null ? null : pulumi.Output.create<bool>(map['azureADOnlyAuthentication'] as bool),
      cspWorkspaceAdminProperties: map['cspWorkspaceAdminProperties'] == null ? null : pulumi.Output.create<CspWorkspaceAdminProperties>(CspWorkspaceAdminProperties.fromMap((map['cspWorkspaceAdminProperties'] as Map).cast<String, dynamic>())),
      defaultDataLakeStorage: map['defaultDataLakeStorage'] == null ? null : pulumi.Output.create<DataLakeStorageAccountDetails>(DataLakeStorageAccountDetails.fromMap((map['defaultDataLakeStorage'] as Map).cast<String, dynamic>())),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<EncryptionDetails>(EncryptionDetails.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedIdentity>(ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : pulumi.Output.create<String>(map['managedVirtualNetwork'] as String),
      managedVirtualNetworkSettings: map['managedVirtualNetworkSettings'] == null ? null : pulumi.Output.create<ManagedVirtualNetworkSettings>(ManagedVirtualNetworkSettings.fromMap((map['managedVirtualNetworkSettings'] as Map).cast<String, dynamic>())),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<PrivateEndpointConnectionSynapse>>((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionSynapse>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      purviewConfiguration: map['purviewConfiguration'] == null ? null : pulumi.Output.create<PurviewConfiguration>(PurviewConfiguration.fromMap((map['purviewConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlAdministratorLogin: map['sqlAdministratorLogin'] == null ? null : pulumi.Output.create<String>(map['sqlAdministratorLogin'] as String),
      sqlAdministratorLoginPassword: map['sqlAdministratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['sqlAdministratorLoginPassword'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustedServiceBypassEnabled: map['trustedServiceBypassEnabled'] == null ? null : pulumi.Output.create<bool>(map['trustedServiceBypassEnabled'] as bool),
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : pulumi.Output.create<VirtualNetworkProfile>(VirtualNetworkProfile.fromMap((map['virtualNetworkProfile'] as Map).cast<String, dynamic>())),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
      workspaceRepositoryConfiguration: map['workspaceRepositoryConfiguration'] == null ? null : pulumi.Output.create<WorkspaceRepositoryConfiguration>(WorkspaceRepositoryConfiguration.fromMap((map['workspaceRepositoryConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

