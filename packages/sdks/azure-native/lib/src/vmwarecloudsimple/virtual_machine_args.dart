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
    required pulumi.Output<int> amountOfRam,
    pulumi.Output<GuestOSCustomization>? customization,
    pulumi.Output<List<VirtualDisk>>? disks,
    pulumi.Output<bool>? exposeToGuestVM,
    pulumi.Output<String>? location,
    pulumi.Output<List<VirtualNic>>? nics,
    required pulumi.Output<int> numberOfCores,
    pulumi.Output<String>? password,
    required pulumi.Output<String> privateCloudId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourcePool>? resourcePool,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? username,
    pulumi.Output<List<String>>? vSphereNetworks,
    pulumi.Output<String>? virtualMachineName,
  }) :
      amountOfRam = pulumi.Input.asInput<int>(amountOfRam),
      customization = pulumi.Input.asOptionalInput<GuestOSCustomization>(customization),
      disks = pulumi.Input.asOptionalInput<List<VirtualDisk>>(disks),
      exposeToGuestVM = pulumi.Input.asOptionalInput<bool>(exposeToGuestVM),
      location = pulumi.Input.asOptionalInput<String>(location),
      nics = pulumi.Input.asOptionalInput<List<VirtualNic>>(nics),
      numberOfCores = pulumi.Input.asInput<int>(numberOfCores),
      password = pulumi.Input.asOptionalInput<String>(password),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourcePool = pulumi.Input.asOptionalInput<ResourcePool>(resourcePool),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      username = pulumi.Input.asOptionalInput<String>(username),
      vSphereNetworks = pulumi.Input.asOptionalInput<List<String>>(vSphereNetworks),
      virtualMachineName = pulumi.Input.asOptionalInput<String>(virtualMachineName);

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
      amountOfRam: pulumi.Output.create<int>(map['amountOfRam'] as int),
      customization: map['customization'] == null ? null : pulumi.Output.create<GuestOSCustomization>(GuestOSCustomization.fromMap((map['customization'] as Map).cast<String, dynamic>())),
      disks: map['disks'] == null ? null : pulumi.Output.create<List<VirtualDisk>>(pulumi.Input.decodeList<VirtualDisk>(map['disks'], (value) => VirtualDisk.fromMap((value as Map).cast<String, dynamic>()))),
      exposeToGuestVM: map['exposeToGuestVM'] == null ? null : pulumi.Output.create<bool>(map['exposeToGuestVM'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      nics: map['nics'] == null ? null : pulumi.Output.create<List<VirtualNic>>(pulumi.Input.decodeList<VirtualNic>(map['nics'], (value) => VirtualNic.fromMap((value as Map).cast<String, dynamic>()))),
      numberOfCores: pulumi.Output.create<int>(map['numberOfCores'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourcePool: map['resourcePool'] == null ? null : pulumi.Output.create<ResourcePool>(ResourcePool.fromMap((map['resourcePool'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      vSphereNetworks: map['vSphereNetworks'] == null ? null : pulumi.Output.create<List<String>>((map['vSphereNetworks'] as List).cast<String>()),
      virtualMachineName: map['virtualMachineName'] == null ? null : pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

