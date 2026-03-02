// ignore_for_file: unused_element, unnecessary_cast

import 'aml_filesystem_client_info_response.dart';
import 'aml_filesystem_encryption_settings_response.dart';
import 'aml_filesystem_health_response.dart';
import 'aml_filesystem_identity_response.dart';
import 'aml_filesystem_response_hsm.dart';
import 'aml_filesystem_response_maintenance_window.dart';
import 'aml_filesystem_root_squash_settings_response.dart';
import 'sku_name_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAmlFilesystem.
class GetAmlFilesystemResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Client information for the AML file system.
  final AmlFilesystemClientInfoResponse clientInfo;
  /// Specifies encryption settings of the AML file system.
  final AmlFilesystemEncryptionSettingsResponse? encryptionSettings;
  /// Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  final String filesystemSubnet;
  /// Health of the AML file system.
  final AmlFilesystemHealthResponse health;
  /// Hydration and archive settings and status
  final AmlFilesystemResponseHsm? hsm;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The managed identity used by the AML file system, if configured.
  final AmlFilesystemIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Start time of a 30-minute weekly maintenance window.
  final AmlFilesystemResponseMaintenanceWindow maintenanceWindow;
  /// The name of the resource
  final String name;
  /// ARM provisioning state.
  final String provisioningState;
  /// Specifies root squash settings of the AML file system.
  final AmlFilesystemRootSquashSettingsResponse? rootSquashSettings;
  /// SKU for the resource.
  final SkuNameResponse? sku;
  /// The size of the AML file system, in TiB. This might be rounded up.
  final double storageCapacityTiB;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Throughput provisioned in MB per sec, calculated as storageCapacityTiB * per-unit storage throughput
  final int throughputProvisionedMBps;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Availability zones for resources. This field should only contain a single element in the array.
  final List<String>? zones;

  /// Creates a new [GetAmlFilesystemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientInfo] Client information for the AML file system.
  /// [encryptionSettings] Specifies encryption settings of the AML file system.
  /// [filesystemSubnet] Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  /// [health] Health of the AML file system.
  /// [hsm] Hydration and archive settings and status
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed identity used by the AML file system, if configured.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Start time of a 30-minute weekly maintenance window.
  /// [name] The name of the resource
  /// [provisioningState] ARM provisioning state.
  /// [rootSquashSettings] Specifies root squash settings of the AML file system.
  /// [sku] SKU for the resource.
  /// [storageCapacityTiB] The size of the AML file system, in TiB. This might be rounded up.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [throughputProvisionedMBps] Throughput provisioned in MB per sec, calculated as storageCapacityTiB * per-unit storage throughput
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] Availability zones for resources. This field should only contain a single element in the array.
  GetAmlFilesystemResult({
    required this.azureApiVersion,
    required this.clientInfo,
    this.encryptionSettings,
    required this.filesystemSubnet,
    required this.health,
    this.hsm,
    required this.id,
    this.identity,
    required this.location,
    required this.maintenanceWindow,
    required this.name,
    required this.provisioningState,
    this.rootSquashSettings,
    this.sku,
    required this.storageCapacityTiB,
    required this.systemData,
    this.tags,
    required this.throughputProvisionedMBps,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientInfo': clientInfo.toMap(),
      'encryptionSettings': ?encryptionSettings == null ? null : encryptionSettings!.toMap(),
      'filesystemSubnet': filesystemSubnet,
      'health': health.toMap(),
      'hsm': ?hsm == null ? null : hsm!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'maintenanceWindow': maintenanceWindow.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'rootSquashSettings': ?rootSquashSettings == null ? null : rootSquashSettings!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'storageCapacityTiB': storageCapacityTiB,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'throughputProvisionedMBps': throughputProvisionedMBps,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetAmlFilesystemResult.fromMap(Map<String, dynamic> map) {
    return GetAmlFilesystemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientInfo: AmlFilesystemClientInfoResponse.fromMap((map['clientInfo'] as Map).cast<String, dynamic>()),
      encryptionSettings: map['encryptionSettings'] == null ? null : AmlFilesystemEncryptionSettingsResponse.fromMap((map['encryptionSettings']! as Map).cast<String, dynamic>()),
      filesystemSubnet: map['filesystemSubnet'] as String,
      health: AmlFilesystemHealthResponse.fromMap((map['health'] as Map).cast<String, dynamic>()),
      hsm: map['hsm'] == null ? null : AmlFilesystemResponseHsm.fromMap((map['hsm']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : AmlFilesystemIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maintenanceWindow: AmlFilesystemResponseMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      rootSquashSettings: map['rootSquashSettings'] == null ? null : AmlFilesystemRootSquashSettingsResponse.fromMap((map['rootSquashSettings']! as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuNameResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      storageCapacityTiB: map['storageCapacityTiB'] as double,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      throughputProvisionedMBps: map['throughputProvisionedMBps'] as int,
      type: map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

