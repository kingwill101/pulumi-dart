import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_args.dart';
import 'aml_filesystem_client_info_response.dart';
import 'aml_filesystem_encryption_settings_response.dart';
import 'aml_filesystem_health_response.dart';
import 'aml_filesystem_identity_response.dart';
import 'aml_filesystem_response_hsm.dart';
import 'aml_filesystem_response_maintenance_window.dart';
import 'aml_filesystem_root_squash_settings_response.dart';
import 'sku_name_response.dart';
import 'system_data_response.dart';

/// An AML file system instance. Follows Azure Resource Manager standards: https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/resource-api-reference.md
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storagecache:AmlFilesystem fs1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageCache/amlFilesystems/{amlFilesystemName}
/// ```
class AmlFilesystem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Client information for the AML file system.
  late final pulumi.Output<AmlFilesystemClientInfoResponse> clientInfo;

  /// Specifies encryption settings of the AML file system.
  late final pulumi.Output<AmlFilesystemEncryptionSettingsResponse?>
  encryptionSettings;

  /// Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  late final pulumi.Output<String> filesystemSubnet;

  /// Health of the AML file system.
  late final pulumi.Output<AmlFilesystemHealthResponse> health;

  /// Hydration and archive settings and status
  late final pulumi.Output<AmlFilesystemResponseHsm?> hsm;

  /// The managed identity used by the AML file system, if configured.
  late final pulumi.Output<AmlFilesystemIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Start time of a 30-minute weekly maintenance window.
  late final pulumi.Output<AmlFilesystemResponseMaintenanceWindow>
  maintenanceWindow;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// ARM provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Specifies root squash settings of the AML file system.
  late final pulumi.Output<AmlFilesystemRootSquashSettingsResponse?>
  rootSquashSettings;

  /// SKU for the resource.
  late final pulumi.Output<SkuNameResponse?> sku;

  /// The size of the AML file system, in TiB. This might be rounded up.
  late final pulumi.Output<double> storageCapacityTiB;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Throughput provisioned in MB per sec, calculated as storageCapacityTiB * per-unit storage throughput
  late final pulumi.Output<int> throughputProvisionedMBps;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Availability zones for resources. This field should only contain a single element in the array.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [AmlFilesystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AmlFilesystem]. {@macro pulumi_storagecache_aml_filesystem_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AmlFilesystem(
    String name, {
    AmlFilesystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storagecache:AmlFilesystem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientInfo = registerOutput<AmlFilesystemClientInfoResponse>('clientInfo');
    encryptionSettings =
        registerOutput<AmlFilesystemEncryptionSettingsResponse?>(
          'encryptionSettings',
        );
    filesystemSubnet = registerOutput<String>('filesystemSubnet');
    health = registerOutput<AmlFilesystemHealthResponse>('health');
    hsm = registerOutput<AmlFilesystemResponseHsm?>('hsm');
    identity = registerOutput<AmlFilesystemIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<AmlFilesystemResponseMaintenanceWindow>(
      'maintenanceWindow',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    rootSquashSettings =
        registerOutput<AmlFilesystemRootSquashSettingsResponse?>(
          'rootSquashSettings',
        );
    sku = registerOutput<SkuNameResponse?>('sku');
    storageCapacityTiB = registerOutput<double>('storageCapacityTiB');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    throughputProvisionedMBps = registerOutput<int>(
      'throughputProvisionedMBps',
    );
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
