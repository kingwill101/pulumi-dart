// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';
import 'extended_location_response.dart';
import 'hardware_inventory_response.dart';
import 'hardware_validation_status_response.dart';
import 'runtime_protection_status_response.dart';
import 'secret_rotation_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBareMetalMachine.
class GetBareMetalMachineResult {
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  final List<String>? associatedResourceIds;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The connection string for the baseboard management controller including IP address and protocol.
  final String? bmcConnectionString;
  /// The credentials of the baseboard management controller on this bare metal machine.
  final AdministrativeCredentialsResponse? bmcCredentials;
  /// The MAC address of the BMC device.
  final String? bmcMacAddress;
  /// The MAC address of a NIC connected to the PXE network.
  final String? bootMacAddress;
  /// The resource ID of the cluster this bare metal machine is associated with.
  final String? clusterId;
  /// The cordon status of the bare metal machine.
  final String? cordonStatus;
  /// The more detailed status of the bare metal machine.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// The hardware inventory, including information acquired from the model/sku information and from the ironic inspector.
  final HardwareInventoryResponse? hardwareInventory;
  /// The details of the latest hardware validation performed for this bare metal machine.
  final HardwareValidationStatusResponse? hardwareValidationStatus;
  /// Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the HybridAksClusters that have nodes hosted on this bare metal machine.
  final List<String>? hybridAksClustersAssociatedIds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of this machine represented by the host object in the Cluster's Kubernetes control plane.
  final String? kubernetesNodeName;
  /// The version of Kubernetes running on this machine.
  final String? kubernetesVersion;
  /// The geo-location where the resource lives
  final String? location;
  /// The cluster version that has been applied to this machine during deployment or a version update.
  final String? machineClusterVersion;
  /// The custom details provided by the customer.
  final String? machineDetails;
  /// The OS-level hostname assigned to this machine.
  final String? machineName;
  /// The list of roles that are assigned to the cluster node running on this machine.
  final List<String>? machineRoles;
  /// The unique internal identifier of the bare metal machine SKU.
  final String? machineSkuId;
  /// The name of the resource
  final String? name;
  /// The IPv4 address that is assigned to the bare metal machine during the cluster deployment.
  final String? oamIpv4Address;
  /// The IPv6 address that is assigned to the bare metal machine during the cluster deployment.
  final String? oamIpv6Address;
  /// The image that is currently provisioned to the OS disk.
  final String? osImage;
  /// The power state derived from the baseboard management controller.
  final String? powerState;
  /// The provisioning state of the bare metal machine.
  final String? provisioningState;
  /// The resource ID of the rack where this bare metal machine resides.
  final String? rackId;
  /// The rack slot in which this bare metal machine is located, ordered from the bottom up i.e. the lowest slot is 1.
  final double? rackSlot;
  /// The indicator of whether the bare metal machine is ready to receive workloads.
  final String? readyState;
  /// The runtime protection status of the bare metal machine.
  final RuntimeProtectionStatusResponse? runtimeProtectionStatus;
  /// The list of statuses that represent secret rotation activity.
  final List<SecretRotationStatusResponse>? secretRotationStatus;
  /// The serial number of the bare metal machine.
  final String? serialNumber;
  /// The discovered value of the machine's service tag.
  final String? serviceTag;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the VirtualMachines that are hosted on this bare metal machine.
  final List<String>? virtualMachinesAssociatedIds;

  /// Creates a new [GetBareMetalMachineResult].
  /// [associatedResourceIds] The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bmcConnectionString] The connection string for the baseboard management controller including IP address and protocol.
  /// [bmcCredentials] The credentials of the baseboard management controller on this bare metal machine.
  /// [bmcMacAddress] The MAC address of the BMC device.
  /// [bootMacAddress] The MAC address of a NIC connected to the PXE network.
  /// [clusterId] The resource ID of the cluster this bare metal machine is associated with.
  /// [cordonStatus] The cordon status of the bare metal machine.
  /// [detailedStatus] The more detailed status of the bare metal machine.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hardwareInventory] The hardware inventory, including information acquired from the model/sku information and from the ironic inspector.
  /// [hardwareValidationStatus] The details of the latest hardware validation performed for this bare metal machine.
  /// [hybridAksClustersAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the HybridAksClusters that have nodes hosted on this bare metal machine.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kubernetesNodeName] The name of this machine represented by the host object in the Cluster's Kubernetes control plane.
  /// [kubernetesVersion] The version of Kubernetes running on this machine.
  /// [location] The geo-location where the resource lives
  /// [machineClusterVersion] The cluster version that has been applied to this machine during deployment or a version update.
  /// [machineDetails] The custom details provided by the customer.
  /// [machineName] The OS-level hostname assigned to this machine.
  /// [machineRoles] The list of roles that are assigned to the cluster node running on this machine.
  /// [machineSkuId] The unique internal identifier of the bare metal machine SKU.
  /// [name] The name of the resource
  /// [oamIpv4Address] The IPv4 address that is assigned to the bare metal machine during the cluster deployment.
  /// [oamIpv6Address] The IPv6 address that is assigned to the bare metal machine during the cluster deployment.
  /// [osImage] The image that is currently provisioned to the OS disk.
  /// [powerState] The power state derived from the baseboard management controller.
  /// [provisioningState] The provisioning state of the bare metal machine.
  /// [rackId] The resource ID of the rack where this bare metal machine resides.
  /// [rackSlot] The rack slot in which this bare metal machine is located, ordered from the bottom up i.e. the lowest slot is 1.
  /// [readyState] The indicator of whether the bare metal machine is ready to receive workloads.
  /// [runtimeProtectionStatus] The runtime protection status of the bare metal machine.
  /// [secretRotationStatus] The list of statuses that represent secret rotation activity.
  /// [serialNumber] The serial number of the bare metal machine.
  /// [serviceTag] The discovered value of the machine's service tag.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachinesAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the VirtualMachines that are hosted on this bare metal machine.
  const GetBareMetalMachineResult({
    this.associatedResourceIds,
    this.azureApiVersion,
    this.bmcConnectionString,
    this.bmcCredentials,
    this.bmcMacAddress,
    this.bootMacAddress,
    this.clusterId,
    this.cordonStatus,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.extendedLocation,
    this.hardwareInventory,
    this.hardwareValidationStatus,
    this.hybridAksClustersAssociatedIds,
    this.id,
    this.kubernetesNodeName,
    this.kubernetesVersion,
    this.location,
    this.machineClusterVersion,
    this.machineDetails,
    this.machineName,
    this.machineRoles,
    this.machineSkuId,
    this.name,
    this.oamIpv4Address,
    this.oamIpv6Address,
    this.osImage,
    this.powerState,
    this.provisioningState,
    this.rackId,
    this.rackSlot,
    this.readyState,
    this.runtimeProtectionStatus,
    this.secretRotationStatus,
    this.serialNumber,
    this.serviceTag,
    this.systemData,
    this.tags,
    this.type,
    this.virtualMachinesAssociatedIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedResourceIds': ?associatedResourceIds,
      'azureApiVersion': ?azureApiVersion,
      'bmcConnectionString': ?bmcConnectionString,
      'bmcCredentials': ?bmcCredentials?.toMap(),
      'bmcMacAddress': ?bmcMacAddress,
      'bootMacAddress': ?bootMacAddress,
      'clusterId': ?clusterId,
      'cordonStatus': ?cordonStatus,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hardwareInventory': ?hardwareInventory?.toMap(),
      'hardwareValidationStatus': ?hardwareValidationStatus?.toMap(),
      'hybridAksClustersAssociatedIds': ?hybridAksClustersAssociatedIds,
      'id': ?id,
      'kubernetesNodeName': ?kubernetesNodeName,
      'kubernetesVersion': ?kubernetesVersion,
      'location': ?location,
      'machineClusterVersion': ?machineClusterVersion,
      'machineDetails': ?machineDetails,
      'machineName': ?machineName,
      'machineRoles': ?machineRoles,
      'machineSkuId': ?machineSkuId,
      'name': ?name,
      'oamIpv4Address': ?oamIpv4Address,
      'oamIpv6Address': ?oamIpv6Address,
      'osImage': ?osImage,
      'powerState': ?powerState,
      'provisioningState': ?provisioningState,
      'rackId': ?rackId,
      'rackSlot': ?rackSlot,
      'readyState': ?readyState,
      'runtimeProtectionStatus': ?runtimeProtectionStatus?.toMap(),
      'secretRotationStatus': ?(() { final guardedValue = secretRotationStatus; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecretRotationStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serialNumber': ?serialNumber,
      'serviceTag': ?serviceTag,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualMachinesAssociatedIds': ?virtualMachinesAssociatedIds,
    };
  }

  factory GetBareMetalMachineResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineResult(
      associatedResourceIds: (() { final guardedValue = map['associatedResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bmcConnectionString: (() { final guardedValue = map['bmcConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bmcCredentials: (() { final guardedValue = map['bmcCredentials']; if (guardedValue == null) return null; return AdministrativeCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bmcMacAddress: (() { final guardedValue = map['bmcMacAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootMacAddress: (() { final guardedValue = map['bootMacAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cordonStatus: (() { final guardedValue = map['cordonStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareInventory: (() { final guardedValue = map['hardwareInventory']; if (guardedValue == null) return null; return HardwareInventoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hardwareValidationStatus: (() { final guardedValue = map['hardwareValidationStatus']; if (guardedValue == null) return null; return HardwareValidationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hybridAksClustersAssociatedIds: (() { final guardedValue = map['hybridAksClustersAssociatedIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesNodeName: (() { final guardedValue = map['kubernetesNodeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineClusterVersion: (() { final guardedValue = map['machineClusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineDetails: (() { final guardedValue = map['machineDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineName: (() { final guardedValue = map['machineName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineRoles: (() { final guardedValue = map['machineRoles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      machineSkuId: (() { final guardedValue = map['machineSkuId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oamIpv4Address: (() { final guardedValue = map['oamIpv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oamIpv6Address: (() { final guardedValue = map['oamIpv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osImage: (() { final guardedValue = map['osImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rackId: (() { final guardedValue = map['rackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rackSlot: (() { final guardedValue = map['rackSlot']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      readyState: (() { final guardedValue = map['readyState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeProtectionStatus: (() { final guardedValue = map['runtimeProtectionStatus']; if (guardedValue == null) return null; return RuntimeProtectionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      secretRotationStatus: (() { final guardedValue = map['secretRotationStatus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretRotationStatusResponse>(guardedValue, (value) => SecretRotationStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceTag: (() { final guardedValue = map['serviceTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachinesAssociatedIds: (() { final guardedValue = map['virtualMachinesAssociatedIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
