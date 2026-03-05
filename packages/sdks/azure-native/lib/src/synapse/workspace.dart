import 'package:pulumi/pulumi.dart' as pulumi;
import 'csp_workspace_admin_properties_response.dart';
import 'data_lake_storage_account_details_response.dart';
import 'encryption_details_response.dart';
import 'managed_identity_response.dart';
import 'managed_virtual_network_settings_response.dart';
import 'purview_configuration_response.dart';
import 'virtual_network_profile_response.dart';
import 'workspace_args.dart';
import 'workspace_repository_configuration_response.dart';

/// A workspace
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:synapse:Workspace workspace1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The ADLA resource ID.
  late final pulumi.Output<String> adlaResourceId;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Connectivity endpoints
  late final pulumi.Output<Map<String, String>> connectivityEndpoints;

  /// Initial workspace AAD admin properties for a CSP subscription
  late final pulumi.Output<CspWorkspaceAdminPropertiesResponse?>
  cspWorkspaceAdminProperties;

  /// Workspace default data lake storage account details
  late final pulumi.Output<DataLakeStorageAccountDetailsResponse?>
  defaultDataLakeStorage;

  /// The encryption details of the workspace
  late final pulumi.Output<EncryptionDetailsResponse?> encryption;

  /// Workspace level configs and feature flags
  late final pulumi.Output<dynamic> extraProperties;

  /// Identity of the workspace
  late final pulumi.Output<ManagedIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Workspace managed resource group. The resource group name uniquely identifies the resource group within the user subscriptionId. The resource group name must be no longer than 90 characters long, and must be alphanumeric characters (Char.IsLetterOrDigit()) and '-', '_', '(', ')' and'.'. Note that the name cannot end with '.'
  late final pulumi.Output<String?> managedResourceGroupName;

  /// Setting this to 'default' will ensure that all compute for this workspace is in a virtual network managed on behalf of the user.
  late final pulumi.Output<String?> managedVirtualNetwork;

  /// Managed Virtual Network Settings
  late final pulumi.Output<ManagedVirtualNetworkSettingsResponse?>
  managedVirtualNetworkSettings;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Private endpoint connections to the workspace
  late final pulumi.Output<List<Map<String, dynamic>>?>
  privateEndpointConnections;

  /// Resource provisioning state
  late final pulumi.Output<String> provisioningState;

  /// Enable or Disable public network access to workspace
  late final pulumi.Output<String?> publicNetworkAccess;

  /// Purview Configuration
  late final pulumi.Output<PurviewConfigurationResponse?> purviewConfiguration;

  /// Workspace settings
  late final pulumi.Output<Map<String, dynamic>> settings;

  /// Login for workspace SQL active directory administrator
  late final pulumi.Output<String?> sqlAdministratorLogin;

  /// SQL administrator login password
  late final pulumi.Output<String?> sqlAdministratorLoginPassword;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Is trustedServiceBypassEnabled for the workspace
  late final pulumi.Output<bool?> trustedServiceBypassEnabled;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Virtual Network profile
  late final pulumi.Output<VirtualNetworkProfileResponse?>
  virtualNetworkProfile;

  /// Git integration settings
  late final pulumi.Output<WorkspaceRepositoryConfigurationResponse?>
  workspaceRepositoryConfiguration;

  /// The workspace unique identifier
  late final pulumi.Output<String> workspaceUID;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_synapse_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:synapse:Workspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adlaResourceId = registerOutput<String>('adlaResourceId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectivityEndpoints = registerOutput<Map<String, String>>(
      'connectivityEndpoints',
    );
    cspWorkspaceAdminProperties =
        registerOutput<CspWorkspaceAdminPropertiesResponse?>(
          'cspWorkspaceAdminProperties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CspWorkspaceAdminPropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    defaultDataLakeStorage =
        registerOutput<DataLakeStorageAccountDetailsResponse?>(
          'defaultDataLakeStorage',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DataLakeStorageAccountDetailsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    encryption = registerOutput<EncryptionDetailsResponse?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    extraProperties = registerOutput<dynamic>('extraProperties');
    identity = registerOutput<ManagedIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    managedResourceGroupName = registerOutput<String?>(
      'managedResourceGroupName',
    );
    managedVirtualNetwork = registerOutput<String?>('managedVirtualNetwork');
    managedVirtualNetworkSettings =
        registerOutput<ManagedVirtualNetworkSettingsResponse?>(
          'managedVirtualNetworkSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedVirtualNetworkSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>?>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    purviewConfiguration = registerOutput<PurviewConfigurationResponse?>(
      'purviewConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PurviewConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    settings = registerOutput<Map<String, dynamic>>('settings');
    sqlAdministratorLogin = registerOutput<String?>('sqlAdministratorLogin');
    sqlAdministratorLoginPassword = registerOutput<String?>(
      'sqlAdministratorLoginPassword',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    trustedServiceBypassEnabled = registerOutput<bool?>(
      'trustedServiceBypassEnabled',
    );
    type = registerOutput<String>('type');
    virtualNetworkProfile = registerOutput<VirtualNetworkProfileResponse?>(
      'virtualNetworkProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualNetworkProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    workspaceRepositoryConfiguration =
        registerOutput<WorkspaceRepositoryConfigurationResponse?>(
          'workspaceRepositoryConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WorkspaceRepositoryConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    workspaceUID = registerOutput<String>('workspaceUID');
  }
}
