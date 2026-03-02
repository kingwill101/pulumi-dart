// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_oscustomization.dart';
import 'resource_pool.dart';
import 'virtual_disk.dart';
import 'virtual_nic.dart';

/// {@template pulumi_vmwarecloudsimple_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_vmwarecloudsimple_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// The amount of memory
  final pulumi.Input<int> amountOfRam;
  /// Virtual machine properties
  final pulumi.Input<GuestOSCustomization>? customization;
  /// The list of Virtual Disks
  final pulumi.Input<List<VirtualDisk>>? disks;
  /// Expose Guest OS or not
  final pulumi.Input<bool>? exposeToGuestVM;
  /// Azure region
  final pulumi.Input<String>? location;
  /// The list of Virtual NICs
  final pulumi.Input<List<VirtualNic>>? nics;
  /// The number of CPU cores
  final pulumi.Input<int> numberOfCores;
  /// Password for login. Deprecated - use customization property
  final pulumi.Input<String>? password;
  /// Private Cloud Id
  final pulumi.Input<String> privateCloudId;
  /// The name of the resource group
  final pulumi.Input<String> resourceGroupName;
  /// Virtual Machines Resource Pool
  final pulumi.Input<ResourcePool>? resourcePool;
  /// The list of tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Virtual Machine Template Id
  final pulumi.Input<String>? templateId;
  /// Username for login. Deprecated - use customization property
  final pulumi.Input<String>? username;
  /// The list of Virtual VSphere Networks
  final pulumi.Input<List<String>>? vSphereNetworks;
  /// virtual machine name
  final pulumi.Input<String>? virtualMachineName;

  /// Creates a new [VirtualMachineArgs].
  /// [amountOfRam] The amount of memory
  /// [customization] Virtual machine properties
  /// [disks] The list of Virtual Disks
  /// [exposeToGuestVM] Expose Guest OS or not
  /// [location] Azure region
  /// [nics] The list of Virtual NICs
  /// [numberOfCores] The number of CPU cores
  /// [password] Password for login. Deprecated - use customization property
  /// [privateCloudId] Private Cloud Id
  /// [resourceGroupName] The name of the resource group
  /// [resourcePool] Virtual Machines Resource Pool
  /// [tags] The list of tags
  /// [templateId] Virtual Machine Template Id
  /// [username] Username for login. Deprecated - use customization property
  /// [vSphereNetworks] The list of Virtual VSphere Networks
  /// [virtualMachineName] virtual machine name
  VirtualMachineArgs({
    required this.amountOfRam,
    this.customization,
    this.disks,
    this.exposeToGuestVM,
    this.location,
    this.nics,
    required this.numberOfCores,
    this.password,
    required this.privateCloudId,
    required this.resourceGroupName,
    this.resourcePool,
    this.tags,
    this.templateId,
    this.username,
    this.vSphereNetworks,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amountOfRam': amountOfRam,
      'customization': ?pulumi.Input.mapOptionalInputValue<GuestOSCustomization, Map<String, dynamic>>(customization, (value) => value.toMap()),
      'disks': ?pulumi.Input.mapOptionalInputValue<List<VirtualDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<VirtualDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exposeToGuestVM': ?exposeToGuestVM,
      'location': ?location,
      'nics': ?pulumi.Input.mapOptionalInputValue<List<VirtualNic>, List<Map<String, dynamic>>>(nics, (value) => pulumi.Input.encodeList<VirtualNic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberOfCores': numberOfCores,
      'password': ?password,
      'privateCloudId': privateCloudId,
      'resourceGroupName': resourceGroupName,
      'resourcePool': ?pulumi.Input.mapOptionalInputValue<ResourcePool, Map<String, dynamic>>(resourcePool, (value) => value.toMap()),
      'tags': ?tags,
      'templateId': ?templateId,
      'username': ?username,
      'vSphereNetworks': ?vSphereNetworks,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      amountOfRam: (map['amountOfRam'] as int).input(),
      customization: map['customization'] == null ? null : (GuestOSCustomization.fromMap((map['customization'] as Map).cast<String, dynamic>())).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<VirtualDisk>(map['disks'], (value) => VirtualDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      exposeToGuestVM: map['exposeToGuestVM'] == null ? null : (map['exposeToGuestVM'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      nics: map['nics'] == null ? null : (pulumi.Input.decodeList<VirtualNic>(map['nics'], (value) => VirtualNic.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberOfCores: (map['numberOfCores'] as int).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourcePool: map['resourcePool'] == null ? null : (ResourcePool.fromMap((map['resourcePool'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
      vSphereNetworks: map['vSphereNetworks'] == null ? null : ((map['vSphereNetworks'] as List).cast<String>()).input(),
      virtualMachineName: map['virtualMachineName'] == null ? null : (map['virtualMachineName'] as String).input(),
    );
  }
}

