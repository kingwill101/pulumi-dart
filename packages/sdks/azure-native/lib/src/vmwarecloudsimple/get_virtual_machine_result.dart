// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_oscustomization_response.dart';
import 'resource_pool_response.dart';
import 'virtual_disk_controller_response.dart';
import 'virtual_disk_response.dart';
import 'virtual_nic_response.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// The amount of memory
  final int amountOfRam;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of Virtual Disks' Controllers
  final List<VirtualDiskControllerResponse> controllers;
  /// Virtual machine properties
  final GuestOSCustomizationResponse? customization;
  /// The list of Virtual Disks
  final List<VirtualDiskResponse>? disks;
  /// The DNS name of Virtual Machine in VCenter
  final String dnsname;
  /// Expose Guest OS or not
  final bool? exposeToGuestVM;
  /// The path to virtual machine folder in VCenter
  final String folder;
  /// The name of Guest OS
  final String guestOS;
  /// The Guest OS type
  final String guestOSType;
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/virtualMachines/{virtualMachineName}
  final String id;
  /// Azure region
  final String location;
  /// {virtualMachineName}
  final String name;
  /// The list of Virtual NICs
  final List<VirtualNicResponse>? nics;
  /// The number of CPU cores
  final int numberOfCores;
  /// Password for login. Deprecated - use customization property
  final String? password;
  /// Private Cloud Id
  final String privateCloudId;
  /// The provisioning status of the resource
  final String provisioningState;
  /// The public ip of Virtual Machine
  final String publicIP;
  /// Virtual Machines Resource Pool
  final ResourcePoolResponse? resourcePool;
  /// The status of Virtual machine
  final String status;
  /// The list of tags
  final Map<String, String>? tags;
  /// Virtual Machine Template Id
  final String? templateId;
  /// {resourceProviderNamespace}/{resourceType}
  final String type;
  /// Username for login. Deprecated - use customization property
  final String? username;
  /// The list of Virtual VSphere Networks
  final List<String>? vSphereNetworks;
  /// The internal id of Virtual Machine in VCenter
  final String vmId;
  /// VMware tools version
  final String vmwaretools;

  /// Creates a new [GetVirtualMachineResult].
  /// [amountOfRam] The amount of memory
  /// [azureApiVersion] The Azure API version of the resource.
  /// [controllers] The list of Virtual Disks' Controllers
  /// [customization] Virtual machine properties
  /// [disks] The list of Virtual Disks
  /// [dnsname] The DNS name of Virtual Machine in VCenter
  /// [exposeToGuestVM] Expose Guest OS or not
  /// [folder] The path to virtual machine folder in VCenter
  /// [guestOS] The name of Guest OS
  /// [guestOSType] The Guest OS type
  /// [id] /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/virtualMachines/{virtualMachineName}
  /// [location] Azure region
  /// [name] {virtualMachineName}
  /// [nics] The list of Virtual NICs
  /// [numberOfCores] The number of CPU cores
  /// [password] Password for login. Deprecated - use customization property
  /// [privateCloudId] Private Cloud Id
  /// [provisioningState] The provisioning status of the resource
  /// [publicIP] The public ip of Virtual Machine
  /// [resourcePool] Virtual Machines Resource Pool
  /// [status] The status of Virtual machine
  /// [tags] The list of tags
  /// [templateId] Virtual Machine Template Id
  /// [type] {resourceProviderNamespace}/{resourceType}
  /// [username] Username for login. Deprecated - use customization property
  /// [vSphereNetworks] The list of Virtual VSphere Networks
  /// [vmId] The internal id of Virtual Machine in VCenter
  /// [vmwaretools] VMware tools version
  const GetVirtualMachineResult({
    required this.amountOfRam,
    required this.azureApiVersion,
    required this.controllers,
    this.customization,
    this.disks,
    required this.dnsname,
    this.exposeToGuestVM,
    required this.folder,
    required this.guestOS,
    required this.guestOSType,
    required this.id,
    required this.location,
    required this.name,
    this.nics,
    required this.numberOfCores,
    this.password,
    required this.privateCloudId,
    required this.provisioningState,
    required this.publicIP,
    this.resourcePool,
    required this.status,
    this.tags,
    this.templateId,
    required this.type,
    this.username,
    this.vSphereNetworks,
    required this.vmId,
    required this.vmwaretools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amountOfRam': amountOfRam,
      'azureApiVersion': azureApiVersion,
      'controllers': pulumi.Input.encodeList<VirtualDiskControllerResponse, Map<String, dynamic>>(controllers, (value) => value.toMap()),
      'customization': ?customization?.toMap(),
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsname': dnsname,
      'exposeToGuestVM': ?exposeToGuestVM,
      'folder': folder,
      'guestOS': guestOS,
      'guestOSType': guestOSType,
      'id': id,
      'location': location,
      'name': name,
      'nics': ?(() { final guardedValue = nics; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNicResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'numberOfCores': numberOfCores,
      'password': ?password,
      'privateCloudId': privateCloudId,
      'provisioningState': provisioningState,
      'publicIP': publicIP,
      'resourcePool': ?resourcePool?.toMap(),
      'status': status,
      'tags': ?tags,
      'templateId': ?templateId,
      'type': type,
      'username': ?username,
      'vSphereNetworks': ?vSphereNetworks,
      'vmId': vmId,
      'vmwaretools': vmwaretools,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      amountOfRam: map['amountOfRam'] as int,
      azureApiVersion: map['azureApiVersion'] as String,
      controllers: pulumi.Input.decodeList<VirtualDiskControllerResponse>(map['controllers']!, (value) => VirtualDiskControllerResponse.fromMap((value as Map).cast<String, dynamic>())),
      customization: (() { final guardedValue = map['customization']; if (guardedValue == null) return null; return GuestOSCustomizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualDiskResponse>(guardedValue, (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsname: map['dnsname'] as String,
      exposeToGuestVM: (() { final guardedValue = map['exposeToGuestVM']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      folder: map['folder'] as String,
      guestOS: map['guestOS'] as String,
      guestOSType: map['guestOSType'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nics: (() { final guardedValue = map['nics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNicResponse>(guardedValue, (value) => VirtualNicResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      numberOfCores: map['numberOfCores'] as int,
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateCloudId: map['privateCloudId'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIP: map['publicIP'] as String,
      resourcePool: (() { final guardedValue = map['resourcePool']; if (guardedValue == null) return null; return ResourcePoolResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: map['status'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vSphereNetworks: (() { final guardedValue = map['vSphereNetworks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vmId: map['vmId'] as String,
      vmwaretools: map['vmwaretools'] as String,
    );
  }
}

