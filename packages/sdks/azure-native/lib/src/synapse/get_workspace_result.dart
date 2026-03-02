// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csp_workspace_admin_properties_response.dart';
import 'data_lake_storage_account_details_response.dart';
import 'encryption_details_response.dart';
import 'managed_identity_response.dart';
import 'managed_virtual_network_settings_response.dart';
import 'private_endpoint_connection_response.dart';
import 'purview_configuration_response.dart';
import 'virtual_network_profile_response.dart';
import 'workspace_repository_configuration_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The ADLA resource ID.
  final String adlaResourceId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Connectivity endpoints
  final Map<String, String> connectivityEndpoints;
  /// Initial workspace AAD admin properties for a CSP subscription
  final CspWorkspaceAdminPropertiesResponse? cspWorkspaceAdminProperties;
  /// Workspace default data lake storage account details
  final DataLakeStorageAccountDetailsResponse? defaultDataLakeStorage;
  /// The encryption details of the workspace
  final EncryptionDetailsResponse? encryption;
  /// Workspace level configs and feature flags
  final dynamic extraProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity of the workspace
  final ManagedIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Workspace managed resource group. The resource group name uniquely identifies the resource group within the user subscriptionId. The resource group name must be no longer than 90 characters long, and must be alphanumeric characters (Char.IsLetterOrDigit()) and '-', '_', '(', ')' and'.'. Note that the name cannot end with '.'
  final String? managedResourceGroupName;
  /// Setting this to 'default' will ensure that all compute for this workspace is in a virtual network managed on behalf of the user.
  final String? managedVirtualNetwork;
  /// Managed Virtual Network Settings
  final ManagedVirtualNetworkSettingsResponse? managedVirtualNetworkSettings;
  /// The name of the resource
  final String name;
  /// Private endpoint connections to the workspace
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Resource provisioning state
  final String provisioningState;
  /// Enable or Disable public network access to workspace
  final String? publicNetworkAccess;
  /// Purview Configuration
  final PurviewConfigurationResponse? purviewConfiguration;
  /// Workspace settings
  final Map<String, dynamic> settings;
  /// Login for workspace SQL active directory administrator
  final String? sqlAdministratorLogin;
  /// SQL administrator login password
  final String? sqlAdministratorLoginPassword;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Is trustedServiceBypassEnabled for the workspace
  final bool? trustedServiceBypassEnabled;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Virtual Network profile
  final VirtualNetworkProfileResponse? virtualNetworkProfile;
  /// Git integration settings
  final WorkspaceRepositoryConfigurationResponse? workspaceRepositoryConfiguration;
  /// The workspace unique identifier
  final String workspaceUID;

  /// Creates a new [GetWorkspaceResult].
  /// [adlaResourceId] The ADLA resource ID.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectivityEndpoints] Connectivity endpoints
  /// [cspWorkspaceAdminProperties] Initial workspace AAD admin properties for a CSP subscription
  /// [defaultDataLakeStorage] Workspace default data lake storage account details
  /// [encryption] The encryption details of the workspace
  /// [extraProperties] Workspace level configs and feature flags
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity of the workspace
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupName] Workspace managed resource group. The resource group name uniquely identifies the resource group within the user subscriptionId. The resource group name must be no longer than 90 characters long, and must be alphanumeric characters (Char.IsLetterOrDigit()) and '-', '_', '(', ')' and'.'. Note that the name cannot end with '.'
  /// [managedVirtualNetwork] Setting this to 'default' will ensure that all compute for this workspace is in a virtual network managed on behalf of the user.
  /// [managedVirtualNetworkSettings] Managed Virtual Network Settings
  /// [name] The name of the resource
  /// [privateEndpointConnections] Private endpoint connections to the workspace
  /// [provisioningState] Resource provisioning state
  /// [publicNetworkAccess] Enable or Disable public network access to workspace
  /// [purviewConfiguration] Purview Configuration
  /// [settings] Workspace settings
  /// [sqlAdministratorLogin] Login for workspace SQL active directory administrator
  /// [sqlAdministratorLoginPassword] SQL administrator login password
  /// [tags] Resource tags.
  /// [trustedServiceBypassEnabled] Is trustedServiceBypassEnabled for the workspace
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetworkProfile] Virtual Network profile
  /// [workspaceRepositoryConfiguration] Git integration settings
  /// [workspaceUID] The workspace unique identifier
  GetWorkspaceResult({
    required this.adlaResourceId,
    required this.azureApiVersion,
    required this.connectivityEndpoints,
    this.cspWorkspaceAdminProperties,
    this.defaultDataLakeStorage,
    this.encryption,
    required this.extraProperties,
    required this.id,
    this.identity,
    required this.location,
    this.managedResourceGroupName,
    this.managedVirtualNetwork,
    this.managedVirtualNetworkSettings,
    required this.name,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.purviewConfiguration,
    required this.settings,
    this.sqlAdministratorLogin,
    this.sqlAdministratorLoginPassword,
    this.tags,
    this.trustedServiceBypassEnabled,
    required this.type,
    this.virtualNetworkProfile,
    this.workspaceRepositoryConfiguration,
    required this.workspaceUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adlaResourceId': adlaResourceId,
      'azureApiVersion': azureApiVersion,
      'connectivityEndpoints': connectivityEndpoints,
      'cspWorkspaceAdminProperties': ?cspWorkspaceAdminProperties == null ? null : cspWorkspaceAdminProperties!.toMap(),
      'defaultDataLakeStorage': ?defaultDataLakeStorage == null ? null : defaultDataLakeStorage!.toMap(),
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'extraProperties': extraProperties,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedVirtualNetwork': ?managedVirtualNetwork,
      'managedVirtualNetworkSettings': ?managedVirtualNetworkSettings == null ? null : managedVirtualNetworkSettings!.toMap(),
      'name': name,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purviewConfiguration': ?purviewConfiguration == null ? null : purviewConfiguration!.toMap(),
      'settings': settings,
      'sqlAdministratorLogin': ?sqlAdministratorLogin,
      'sqlAdministratorLoginPassword': ?sqlAdministratorLoginPassword,
      'tags': ?tags,
      'trustedServiceBypassEnabled': ?trustedServiceBypassEnabled,
      'type': type,
      'virtualNetworkProfile': ?virtualNetworkProfile == null ? null : virtualNetworkProfile!.toMap(),
      'workspaceRepositoryConfiguration': ?workspaceRepositoryConfiguration == null ? null : workspaceRepositoryConfiguration!.toMap(),
      'workspaceUID': workspaceUID,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      adlaResourceId: map['adlaResourceId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      connectivityEndpoints: (map['connectivityEndpoints'] as Map).cast<String, String>(),
      cspWorkspaceAdminProperties: map['cspWorkspaceAdminProperties'] == null ? null : CspWorkspaceAdminPropertiesResponse.fromMap((map['cspWorkspaceAdminProperties']! as Map).cast<String, dynamic>()),
      defaultDataLakeStorage: map['defaultDataLakeStorage'] == null ? null : DataLakeStorageAccountDetailsResponse.fromMap((map['defaultDataLakeStorage']! as Map).cast<String, dynamic>()),
      encryption: map['encryption'] == null ? null : EncryptionDetailsResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      extraProperties: map['extraProperties'],
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : map['managedResourceGroupName']! as String,
      managedVirtualNetwork: map['managedVirtualNetwork'] == null ? null : map['managedVirtualNetwork']! as String,
      managedVirtualNetworkSettings: map['managedVirtualNetworkSettings'] == null ? null : ManagedVirtualNetworkSettingsResponse.fromMap((map['managedVirtualNetworkSettings']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      purviewConfiguration: map['purviewConfiguration'] == null ? null : PurviewConfigurationResponse.fromMap((map['purviewConfiguration']! as Map).cast<String, dynamic>()),
      settings: (map['settings'] as Map).cast<String, dynamic>(),
      sqlAdministratorLogin: map['sqlAdministratorLogin'] == null ? null : map['sqlAdministratorLogin']! as String,
      sqlAdministratorLoginPassword: map['sqlAdministratorLoginPassword'] == null ? null : map['sqlAdministratorLoginPassword']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      trustedServiceBypassEnabled: map['trustedServiceBypassEnabled'] == null ? null : map['trustedServiceBypassEnabled']! as bool,
      type: map['type'] as String,
      virtualNetworkProfile: map['virtualNetworkProfile'] == null ? null : VirtualNetworkProfileResponse.fromMap((map['virtualNetworkProfile']! as Map).cast<String, dynamic>()),
      workspaceRepositoryConfiguration: map['workspaceRepositoryConfiguration'] == null ? null : WorkspaceRepositoryConfigurationResponse.fromMap((map['workspaceRepositoryConfiguration']! as Map).cast<String, dynamic>()),
      workspaceUID: map['workspaceUID'] as String,
    );
  }
}

