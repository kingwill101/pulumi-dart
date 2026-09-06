// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';
import 'extended_location_response.dart';
import 'secret_rotation_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageAppliance.
class GetStorageApplianceResult {
  /// The credentials of the administrative interface on this storage appliance.
  final AdministrativeCredentialsResponse? administratorCredentials;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The total capacity of the storage appliance. Measured in GiB.
  final double? capacity;
  /// The amount of storage consumed.
  final double? capacityUsed;
  /// The resource ID of the cluster this storage appliance is associated with. Measured in GiB.
  final String? clusterId;
  /// The detailed status of the storage appliance.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The endpoint for the management interface of the storage appliance.
  final String? managementIpv4Address;
  /// The manufacturer of the storage appliance.
  final String? manufacturer;
  /// The model of the storage appliance.
  final String? model;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the storage appliance.
  final String? provisioningState;
  /// The resource ID of the rack where this storage appliance resides.
  final String? rackId;
  /// The slot the storage appliance is in the rack based on the BOM configuration.
  final double? rackSlot;
  /// The indicator of whether the storage appliance supports remote vendor management.
  final String? remoteVendorManagementFeature;
  /// The indicator of whether the remote vendor management feature is enabled or disabled, or unsupported if it is an unsupported feature.
  final String? remoteVendorManagementStatus;
  /// The list of statuses that represent secret rotation activity.
  final List<SecretRotationStatusResponse>? secretRotationStatus;
  /// The serial number for the storage appliance.
  final String? serialNumber;
  /// The SKU for the storage appliance.
  final String? storageApplianceSkuId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The version of the storage appliance.
  final String? version;

  /// Creates a new [GetStorageApplianceResult].
  /// [administratorCredentials] The credentials of the administrative interface on this storage appliance.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacity] The total capacity of the storage appliance. Measured in GiB.
  /// [capacityUsed] The amount of storage consumed.
  /// [clusterId] The resource ID of the cluster this storage appliance is associated with. Measured in GiB.
  /// [detailedStatus] The detailed status of the storage appliance.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managementIpv4Address] The endpoint for the management interface of the storage appliance.
  /// [manufacturer] The manufacturer of the storage appliance.
  /// [model] The model of the storage appliance.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the storage appliance.
  /// [rackId] The resource ID of the rack where this storage appliance resides.
  /// [rackSlot] The slot the storage appliance is in the rack based on the BOM configuration.
  /// [remoteVendorManagementFeature] The indicator of whether the storage appliance supports remote vendor management.
  /// [remoteVendorManagementStatus] The indicator of whether the remote vendor management feature is enabled or disabled, or unsupported if it is an unsupported feature.
  /// [secretRotationStatus] The list of statuses that represent secret rotation activity.
  /// [serialNumber] The serial number for the storage appliance.
  /// [storageApplianceSkuId] The SKU for the storage appliance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version of the storage appliance.
  const GetStorageApplianceResult({
    this.administratorCredentials,
    this.azureApiVersion,
    this.capacity,
    this.capacityUsed,
    this.clusterId,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.extendedLocation,
    this.id,
    this.location,
    this.managementIpv4Address,
    this.manufacturer,
    this.model,
    this.name,
    this.provisioningState,
    this.rackId,
    this.rackSlot,
    this.remoteVendorManagementFeature,
    this.remoteVendorManagementStatus,
    this.secretRotationStatus,
    this.serialNumber,
    this.storageApplianceSkuId,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorCredentials': ?administratorCredentials?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'capacity': ?capacity,
      'capacityUsed': ?capacityUsed,
      'clusterId': ?clusterId,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'location': ?location,
      'managementIpv4Address': ?managementIpv4Address,
      'manufacturer': ?manufacturer,
      'model': ?model,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'rackId': ?rackId,
      'rackSlot': ?rackSlot,
      'remoteVendorManagementFeature': ?remoteVendorManagementFeature,
      'remoteVendorManagementStatus': ?remoteVendorManagementStatus,
      'secretRotationStatus': ?(() { final guardedValue = secretRotationStatus; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecretRotationStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serialNumber': ?serialNumber,
      'storageApplianceSkuId': ?storageApplianceSkuId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetStorageApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetStorageApplianceResult(
      administratorCredentials: (() { final guardedValue = map['administratorCredentials']; if (guardedValue == null) return null; return AdministrativeCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      capacityUsed: (() { final guardedValue = map['capacityUsed']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementIpv4Address: (() { final guardedValue = map['managementIpv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rackId: (() { final guardedValue = map['rackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rackSlot: (() { final guardedValue = map['rackSlot']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      remoteVendorManagementFeature: (() { final guardedValue = map['remoteVendorManagementFeature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteVendorManagementStatus: (() { final guardedValue = map['remoteVendorManagementStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretRotationStatus: (() { final guardedValue = map['secretRotationStatus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretRotationStatusResponse>(guardedValue, (value) => SecretRotationStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageApplianceSkuId: (() { final guardedValue = map['storageApplianceSkuId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
