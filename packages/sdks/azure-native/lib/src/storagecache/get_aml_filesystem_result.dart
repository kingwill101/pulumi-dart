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
  final String? azureApiVersion;
  /// Client information for the AML file system.
  final AmlFilesystemClientInfoResponse? clientInfo;
  /// Specifies encryption settings of the AML file system.
  final AmlFilesystemEncryptionSettingsResponse? encryptionSettings;
  /// Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET's address space.
  final String? filesystemSubnet;
  /// Health of the AML file system.
  final AmlFilesystemHealthResponse? health;
  /// Hydration and archive settings and status
  final AmlFilesystemResponseHsm? hsm;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The managed identity used by the AML file system, if configured.
  final AmlFilesystemIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Start time of a 30-minute weekly maintenance window.
  final AmlFilesystemResponseMaintenanceWindow? maintenanceWindow;
  /// The name of the resource
  final String? name;
  /// ARM provisioning state.
  final String? provisioningState;
  /// Specifies root squash settings of the AML file system.
  final AmlFilesystemRootSquashSettingsResponse? rootSquashSettings;
  /// SKU for the resource.
  final SkuNameResponse? sku;
  /// The size of the AML file system, in TiB. This might be rounded up.
  final double? storageCapacityTiB;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Throughput provisioned in MB per sec, calculated as storageCapacityTiB * per-unit storage throughput
  final int? throughputProvisionedMBps;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetAmlFilesystemResult({
    this.azureApiVersion,
    this.clientInfo,
    this.encryptionSettings,
    this.filesystemSubnet,
    this.health,
    this.hsm,
    this.id,
    this.identity,
    this.location,
    this.maintenanceWindow,
    this.name,
    this.provisioningState,
    this.rootSquashSettings,
    this.sku,
    this.storageCapacityTiB,
    this.systemData,
    this.tags,
    this.throughputProvisionedMBps,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clientInfo': ?clientInfo?.toMap(),
      'encryptionSettings': ?encryptionSettings?.toMap(),
      'filesystemSubnet': ?filesystemSubnet,
      'health': ?health?.toMap(),
      'hsm': ?hsm?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'rootSquashSettings': ?rootSquashSettings?.toMap(),
      'sku': ?sku?.toMap(),
      'storageCapacityTiB': ?storageCapacityTiB,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'throughputProvisionedMBps': ?throughputProvisionedMBps,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory GetAmlFilesystemResult.fromMap(Map<String, dynamic> map) {
    return GetAmlFilesystemResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientInfo: (() { final guardedValue = map['clientInfo']; if (guardedValue == null) return null; return AmlFilesystemClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return AmlFilesystemEncryptionSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filesystemSubnet: (() { final guardedValue = map['filesystemSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return AmlFilesystemHealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hsm: (() { final guardedValue = map['hsm']; if (guardedValue == null) return null; return AmlFilesystemResponseHsm.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return AmlFilesystemIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return AmlFilesystemResponseMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootSquashSettings: (() { final guardedValue = map['rootSquashSettings']; if (guardedValue == null) return null; return AmlFilesystemRootSquashSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuNameResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageCapacityTiB: (() { final guardedValue = map['storageCapacityTiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      throughputProvisionedMBps: (() { final guardedValue = map['throughputProvisionedMBps']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
