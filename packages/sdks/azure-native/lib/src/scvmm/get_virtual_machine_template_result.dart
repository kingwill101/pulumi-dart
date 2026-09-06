// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'network_interfaces_response.dart';
import 'system_data_response.dart';
import 'virtual_disk_response.dart';

/// Result data returned by getVirtualMachineTemplate.
class GetVirtualMachineTemplateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets computer name.
  final String? computerName;
  /// Gets or sets the desired number of vCPUs for the vm.
  final int? cpuCount;
  /// Gets or sets the disks of the template.
  final List<VirtualDiskResponse>? disks;
  /// Gets or sets a value indicating whether to enable dynamic memory or not.
  final String? dynamicMemoryEnabled;
  /// Gets or sets the max dynamic memory for the vm.
  final int? dynamicMemoryMaxMB;
  /// Gets or sets the min dynamic memory for the vm.
  final int? dynamicMemoryMinMB;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Gets or sets the generation for the vm.
  final int? generation;
  /// Resource Id
  final String? id;
  /// Gets or sets the inventory Item ID for the resource.
  final String? inventoryItemId;
  /// Gets or sets a value indicating whether the vm template is customizable or not.
  final String? isCustomizable;
  /// Gets highly available property.
  final String? isHighlyAvailable;
  /// Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  final String? limitCpuForMigration;
  /// Gets or sets the location.
  final String? location;
  /// MemoryMB is the desired size of a virtual machine's memory, in MB.
  final int? memoryMB;
  /// Resource Name
  final String? name;
  /// Gets or sets the network interfaces of the template.
  final List<NetworkInterfacesResponse>? networkInterfaces;
  /// Gets or sets os name.
  final String? osName;
  /// Gets or sets the type of the os.
  final String? osType;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// The system data.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String? type;
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
    this.azureApiVersion,
    this.computerName,
    this.cpuCount,
    this.disks,
    this.dynamicMemoryEnabled,
    this.dynamicMemoryMaxMB,
    this.dynamicMemoryMinMB,
    this.extendedLocation,
    this.generation,
    this.id,
    this.inventoryItemId,
    this.isCustomizable,
    this.isHighlyAvailable,
    this.limitCpuForMigration,
    this.location,
    this.memoryMB,
    this.name,
    this.networkInterfaces,
    this.osName,
    this.osType,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'computerName': ?computerName,
      'cpuCount': ?cpuCount,
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dynamicMemoryEnabled': ?dynamicMemoryEnabled,
      'dynamicMemoryMaxMB': ?dynamicMemoryMaxMB,
      'dynamicMemoryMinMB': ?dynamicMemoryMinMB,
      'extendedLocation': ?extendedLocation?.toMap(),
      'generation': ?generation,
      'id': ?id,
      'inventoryItemId': ?inventoryItemId,
      'isCustomizable': ?isCustomizable,
      'isHighlyAvailable': ?isHighlyAvailable,
      'limitCpuForMigration': ?limitCpuForMigration,
      'location': ?location,
      'memoryMB': ?memoryMB,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfacesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'osName': ?osName,
      'osType': ?osType,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetVirtualMachineTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualDiskResponse>(guardedValue, (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dynamicMemoryEnabled: (() { final guardedValue = map['dynamicMemoryEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicMemoryMaxMB: (() { final guardedValue = map['dynamicMemoryMaxMB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dynamicMemoryMinMB: (() { final guardedValue = map['dynamicMemoryMinMB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isCustomizable: (() { final guardedValue = map['isCustomizable']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isHighlyAvailable: (() { final guardedValue = map['isHighlyAvailable']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limitCpuForMigration: (() { final guardedValue = map['limitCpuForMigration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memoryMB: (() { final guardedValue = map['memoryMB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfacesResponse>(guardedValue, (value) => NetworkInterfacesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
