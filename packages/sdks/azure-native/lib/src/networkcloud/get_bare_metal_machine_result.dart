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
  final List<String> associatedResourceIds;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connection string for the baseboard management controller including IP address and protocol.
  final String bmcConnectionString;
  /// The credentials of the baseboard management controller on this bare metal machine.
  final AdministrativeCredentialsResponse bmcCredentials;
  /// The MAC address of the BMC device.
  final String bmcMacAddress;
  /// The MAC address of a NIC connected to the PXE network.
  final String bootMacAddress;
  /// The resource ID of the cluster this bare metal machine is associated with.
  final String clusterId;
  /// The cordon status of the bare metal machine.
  final String cordonStatus;
  /// The more detailed status of the bare metal machine.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// The hardware inventory, including information acquired from the model/sku information and from the ironic inspector.
  final HardwareInventoryResponse hardwareInventory;
  /// The details of the latest hardware validation performed for this bare metal machine.
  final HardwareValidationStatusResponse hardwareValidationStatus;
  /// Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the HybridAksClusters that have nodes hosted on this bare metal machine.
  final List<String> hybridAksClustersAssociatedIds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of this machine represented by the host object in the Cluster's Kubernetes control plane.
  final String kubernetesNodeName;
  /// The version of Kubernetes running on this machine.
  final String kubernetesVersion;
  /// The geo-location where the resource lives
  final String location;
  /// The cluster version that has been applied to this machine during deployment or a version update.
  final String? machineClusterVersion;
  /// The custom details provided by the customer.
  final String machineDetails;
  /// The OS-level hostname assigned to this machine.
  final String machineName;
  /// The list of roles that are assigned to the cluster node running on this machine.
  final List<String> machineRoles;
  /// The unique internal identifier of the bare metal machine SKU.
  final String machineSkuId;
  /// The name of the resource
  final String name;
  /// The IPv4 address that is assigned to the bare metal machine during the cluster deployment.
  final String oamIpv4Address;
  /// The IPv6 address that is assigned to the bare metal machine during the cluster deployment.
  final String oamIpv6Address;
  /// The image that is currently provisioned to the OS disk.
  final String osImage;
  /// The power state derived from the baseboard management controller.
  final String powerState;
  /// The provisioning state of the bare metal machine.
  final String provisioningState;
  /// The resource ID of the rack where this bare metal machine resides.
  final String rackId;
  /// The rack slot in which this bare metal machine is located, ordered from the bottom up i.e. the lowest slot is 1.
  final double rackSlot;
  /// The indicator of whether the bare metal machine is ready to receive workloads.
  final String readyState;
  /// The runtime protection status of the bare metal machine.
  final RuntimeProtectionStatusResponse runtimeProtectionStatus;
  /// The list of statuses that represent secret rotation activity.
  final List<SecretRotationStatusResponse> secretRotationStatus;
  /// The serial number of the bare metal machine.
  final String serialNumber;
  /// The discovered value of the machine's service tag.
  final String serviceTag;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the VirtualMachines that are hosted on this bare metal machine.
  final List<String> virtualMachinesAssociatedIds;

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
    required this.associatedResourceIds,
    required this.azureApiVersion,
    required this.bmcConnectionString,
    required this.bmcCredentials,
    required this.bmcMacAddress,
    required this.bootMacAddress,
    required this.clusterId,
    required this.cordonStatus,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.hardwareInventory,
    required this.hardwareValidationStatus,
    required this.hybridAksClustersAssociatedIds,
    required this.id,
    required this.kubernetesNodeName,
    required this.kubernetesVersion,
    required this.location,
    this.machineClusterVersion,
    required this.machineDetails,
    required this.machineName,
    required this.machineRoles,
    required this.machineSkuId,
    required this.name,
    required this.oamIpv4Address,
    required this.oamIpv6Address,
    required this.osImage,
    required this.powerState,
    required this.provisioningState,
    required this.rackId,
    required this.rackSlot,
    required this.readyState,
    required this.runtimeProtectionStatus,
    required this.secretRotationStatus,
    required this.serialNumber,
    required this.serviceTag,
    required this.systemData,
    this.tags,
    required this.type,
    required this.virtualMachinesAssociatedIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedResourceIds': associatedResourceIds,
      'azureApiVersion': azureApiVersion,
      'bmcConnectionString': bmcConnectionString,
      'bmcCredentials': bmcCredentials.toMap(),
      'bmcMacAddress': bmcMacAddress,
      'bootMacAddress': bootMacAddress,
      'clusterId': clusterId,
      'cordonStatus': cordonStatus,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'hardwareInventory': hardwareInventory.toMap(),
      'hardwareValidationStatus': hardwareValidationStatus.toMap(),
      'hybridAksClustersAssociatedIds': hybridAksClustersAssociatedIds,
      'id': id,
      'kubernetesNodeName': kubernetesNodeName,
      'kubernetesVersion': kubernetesVersion,
      'location': location,
      'machineClusterVersion': ?machineClusterVersion,
      'machineDetails': machineDetails,
      'machineName': machineName,
      'machineRoles': machineRoles,
      'machineSkuId': machineSkuId,
      'name': name,
      'oamIpv4Address': oamIpv4Address,
      'oamIpv6Address': oamIpv6Address,
      'osImage': osImage,
      'powerState': powerState,
      'provisioningState': provisioningState,
      'rackId': rackId,
      'rackSlot': rackSlot,
      'readyState': readyState,
      'runtimeProtectionStatus': runtimeProtectionStatus.toMap(),
      'secretRotationStatus': pulumi.Input.encodeList<SecretRotationStatusResponse, Map<String, dynamic>>(secretRotationStatus, (value) => value.toMap()),
      'serialNumber': serialNumber,
      'serviceTag': serviceTag,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualMachinesAssociatedIds': virtualMachinesAssociatedIds,
    };
  }

  factory GetBareMetalMachineResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineResult(
      associatedResourceIds: (map['associatedResourceIds'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      bmcConnectionString: map['bmcConnectionString'] as String,
      bmcCredentials: AdministrativeCredentialsResponse.fromMap((map['bmcCredentials']! as Map).cast<String, dynamic>()),
      bmcMacAddress: map['bmcMacAddress'] as String,
      bootMacAddress: map['bootMacAddress'] as String,
      clusterId: map['clusterId'] as String,
      cordonStatus: map['cordonStatus'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      hardwareInventory: HardwareInventoryResponse.fromMap((map['hardwareInventory']! as Map).cast<String, dynamic>()),
      hardwareValidationStatus: HardwareValidationStatusResponse.fromMap((map['hardwareValidationStatus']! as Map).cast<String, dynamic>()),
      hybridAksClustersAssociatedIds: (map['hybridAksClustersAssociatedIds'] as List).cast<String>(),
      id: map['id'] as String,
      kubernetesNodeName: map['kubernetesNodeName'] as String,
      kubernetesVersion: map['kubernetesVersion'] as String,
      location: map['location'] as String,
      machineClusterVersion: (() { final guardedValue = map['machineClusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineDetails: map['machineDetails'] as String,
      machineName: map['machineName'] as String,
      machineRoles: (map['machineRoles'] as List).cast<String>(),
      machineSkuId: map['machineSkuId'] as String,
      name: map['name'] as String,
      oamIpv4Address: map['oamIpv4Address'] as String,
      oamIpv6Address: map['oamIpv6Address'] as String,
      osImage: map['osImage'] as String,
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      rackId: map['rackId'] as String,
      rackSlot: map['rackSlot'] as double,
      readyState: map['readyState'] as String,
      runtimeProtectionStatus: RuntimeProtectionStatusResponse.fromMap((map['runtimeProtectionStatus']! as Map).cast<String, dynamic>()),
      secretRotationStatus: pulumi.Input.decodeList<SecretRotationStatusResponse>(map['secretRotationStatus']!, (value) => SecretRotationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      serialNumber: map['serialNumber'] as String,
      serviceTag: map['serviceTag'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualMachinesAssociatedIds: (map['virtualMachinesAssociatedIds'] as List).cast<String>(),
    );
  }
}

