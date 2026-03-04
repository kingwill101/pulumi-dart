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
      'customization':
          ?pulumi.Input.mapOptionalInputValue<
            GuestOSCustomization,
            Map<String, dynamic>
          >(customization, (value) => value.toMap()),
      'disks':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualDisk>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<VirtualDisk, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'exposeToGuestVM': ?exposeToGuestVM,
      'location': ?location,
      'nics':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNic>,
            List<Map<String, dynamic>>
          >(
            nics,
            (value) =>
                pulumi.Input.encodeList<VirtualNic, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'numberOfCores': numberOfCores,
      'password': ?password,
      'privateCloudId': privateCloudId,
      'resourceGroupName': resourceGroupName,
      'resourcePool':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePool,
            Map<String, dynamic>
          >(resourcePool, (value) => value.toMap()),
      'tags': ?tags,
      'templateId': ?templateId,
      'username': ?username,
      'vSphereNetworks': ?vSphereNetworks,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      amountOfRam: pulumi.Input.fromValue(map['amountOfRam'] as int),
      customization: (() {
        final guardedValue = map['customization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GuestOSCustomization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disks: (() {
        final guardedValue = map['disks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualDisk>(
            guardedValue,
            (value) =>
                VirtualDisk.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      exposeToGuestVM: (() {
        final guardedValue = map['exposeToGuestVM'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nics: (() {
        final guardedValue = map['nics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNic>(
            guardedValue,
            (value) =>
                VirtualNic.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      numberOfCores: pulumi.Input.fromValue(map['numberOfCores'] as int),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourcePool: (() {
        final guardedValue = map['resourcePool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePool.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vSphereNetworks: (() {
        final guardedValue = map['vSphereNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      virtualMachineName: (() {
        final guardedValue = map['virtualMachineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
