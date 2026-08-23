// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'network_interfaces_response.dart';
import 'system_data_response.dart';
import 'virtual_disk_response.dart';

/// Result data returned by getVirtualMachineTemplate.
class GetVirtualMachineTemplateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets computer name.
  final String computerName;
  /// Gets or sets the desired number of vCPUs for the vm.
  final int cpuCount;
  /// Gets or sets the disks of the template.
  final List<VirtualDiskResponse> disks;
  /// Gets or sets a value indicating whether to enable dynamic memory or not.
  final String dynamicMemoryEnabled;
  /// Gets or sets the max dynamic memory for the vm.
  final int dynamicMemoryMaxMB;
  /// Gets or sets the min dynamic memory for the vm.
  final int dynamicMemoryMinMB;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Gets or sets the generation for the vm.
  final int generation;
  /// Resource Id
  final String id;
  /// Gets or sets the inventory Item ID for the resource.
  final String? inventoryItemId;
  /// Gets or sets a value indicating whether the vm template is customizable or not.
  final String isCustomizable;
  /// Gets highly available property.
  final String isHighlyAvailable;
  /// Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  final String limitCpuForMigration;
  /// Gets or sets the location.
  final String location;
  /// MemoryMB is the desired size of a virtual machine's memory, in MB.
  final int memoryMB;
  /// Resource Name
  final String name;
  /// Gets or sets the network interfaces of the template.
  final List<NetworkInterfacesResponse> networkInterfaces;
  /// Gets or sets os name.
  final String osName;
  /// Gets or sets the type of the os.
  final String osType;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// The system data.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String type;
  /// Unique ID of the virtual machine template.
  final String? uuid;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final String? vmmServerId;

  /// Creates a new [GetVirtualMachineTemplateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computerName] Gets or sets computer name.
  /// [cpuCount] Gets or sets the desired number of vCPUs for the vm.
  /// [disks] Gets or sets the disks of the template.
  /// [dynamicMemoryEnabled] Gets or sets a value indicating whether to enable dynamic memory or not.
  /// [dynamicMemoryMaxMB] Gets or sets the max dynamic memory for the vm.
  /// [dynamicMemoryMinMB] Gets or sets the min dynamic memory for the vm.
  /// [extendedLocation] The extended location.
  /// [generation] Gets or sets the generation for the vm.
  /// [id] Resource Id
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [isCustomizable] Gets or sets a value indicating whether the vm template is customizable or not.
  /// [isHighlyAvailable] Gets highly available property.
  /// [limitCpuForMigration] Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  /// [location] Gets or sets the location.
  /// [memoryMB] MemoryMB is the desired size of a virtual machine's memory, in MB.
  /// [name] Resource Name
  /// [networkInterfaces] Gets or sets the network interfaces of the template.
  /// [osName] Gets or sets os name.
  /// [osType] Gets or sets the type of the os.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [systemData] The system data.
  /// [tags] Resource tags
  /// [type] Resource Type
  /// [uuid] Unique ID of the virtual machine template.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  const GetVirtualMachineTemplateResult({
    required this.azureApiVersion,
    required this.computerName,
    required this.cpuCount,
    required this.disks,
    required this.dynamicMemoryEnabled,
    required this.dynamicMemoryMaxMB,
    required this.dynamicMemoryMinMB,
    required this.extendedLocation,
    required this.generation,
    required this.id,
    this.inventoryItemId,
    required this.isCustomizable,
    required this.isHighlyAvailable,
    required this.limitCpuForMigration,
    required this.location,
    required this.memoryMB,
    required this.name,
    required this.networkInterfaces,
    required this.osName,
    required this.osType,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.uuid,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'computerName': computerName,
      'cpuCount': cpuCount,
      'disks': pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'dynamicMemoryEnabled': dynamicMemoryEnabled,
      'dynamicMemoryMaxMB': dynamicMemoryMaxMB,
      'dynamicMemoryMinMB': dynamicMemoryMinMB,
      'extendedLocation': extendedLocation.toMap(),
      'generation': generation,
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'isCustomizable': isCustomizable,
      'isHighlyAvailable': isHighlyAvailable,
      'limitCpuForMigration': limitCpuForMigration,
      'location': location,
      'memoryMB': memoryMB,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfacesResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'osName': osName,
      'osType': osType,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': ?uuid,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetVirtualMachineTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      computerName: map['computerName'] as String,
      cpuCount: map['cpuCount'] as int,
      disks: pulumi.Input.decodeList<VirtualDiskResponse>(map['disks']!, (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      dynamicMemoryEnabled: map['dynamicMemoryEnabled'] as String,
      dynamicMemoryMaxMB: map['dynamicMemoryMaxMB'] as int,
      dynamicMemoryMinMB: map['dynamicMemoryMinMB'] as int,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      generation: map['generation'] as int,
      id: map['id'] as String,
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isCustomizable: map['isCustomizable'] as String,
      isHighlyAvailable: map['isHighlyAvailable'] as String,
      limitCpuForMigration: map['limitCpuForMigration'] as String,
      location: map['location'] as String,
      memoryMB: map['memoryMB'] as int,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfacesResponse>(map['networkInterfaces']!, (value) => NetworkInterfacesResponse.fromMap((value as Map).cast<String, dynamic>())),
      osName: map['osName'] as String,
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
