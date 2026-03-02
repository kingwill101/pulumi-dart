// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials.dart';
import 'extended_location.dart';

/// {@template pulumi_networkcloud_bare_metal_machine_args_doc}
/// The set of arguments for BareMetalMachine.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_bare_metal_machine_args_doc}
class BareMetalMachineArgs {
  /// The name of the bare metal machine.
  final pulumi.Input<String>? bareMetalMachineName;
  /// The connection string for the baseboard management controller including IP address and protocol.
  final pulumi.Input<String> bmcConnectionString;
  /// The credentials of the baseboard management controller on this bare metal machine.
  final pulumi.Input<AdministrativeCredentials> bmcCredentials;
  /// The MAC address of the BMC device.
  final pulumi.Input<String> bmcMacAddress;
  /// The MAC address of a NIC connected to the PXE network.
  final pulumi.Input<String> bootMacAddress;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The cluster version that has been applied to this machine during deployment or a version update.
  final pulumi.Input<String>? machineClusterVersion;
  /// The custom details provided by the customer.
  final pulumi.Input<String> machineDetails;
  /// The OS-level hostname assigned to this machine.
  final pulumi.Input<String> machineName;
  /// The unique internal identifier of the bare metal machine SKU.
  final pulumi.Input<String> machineSkuId;
  /// The resource ID of the rack where this bare metal machine resides.
  final pulumi.Input<String> rackId;
  /// The rack slot in which this bare metal machine is located, ordered from the bottom up i.e. the lowest slot is 1.
  final pulumi.Input<double> rackSlot;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The serial number of the bare metal machine.
  final pulumi.Input<String> serialNumber;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BareMetalMachineArgs].
  /// [bareMetalMachineName] The name of the bare metal machine.
  /// [bmcConnectionString] The connection string for the baseboard management controller including IP address and protocol.
  /// [bmcCredentials] The credentials of the baseboard management controller on this bare metal machine.
  /// [bmcMacAddress] The MAC address of the BMC device.
  /// [bootMacAddress] The MAC address of a NIC connected to the PXE network.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [machineClusterVersion] The cluster version that has been applied to this machine during deployment or a version update.
  /// [machineDetails] The custom details provided by the customer.
  /// [machineName] The OS-level hostname assigned to this machine.
  /// [machineSkuId] The unique internal identifier of the bare metal machine SKU.
  /// [rackId] The resource ID of the rack where this bare metal machine resides.
  /// [rackSlot] The rack slot in which this bare metal machine is located, ordered from the bottom up i.e. the lowest slot is 1.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] The serial number of the bare metal machine.
  /// [tags] Resource tags.
  BareMetalMachineArgs({
    this.bareMetalMachineName,
    required this.bmcConnectionString,
    required this.bmcCredentials,
    required this.bmcMacAddress,
    required this.bootMacAddress,
    required this.extendedLocation,
    this.location,
    this.machineClusterVersion,
    required this.machineDetails,
    required this.machineName,
    required this.machineSkuId,
    required this.rackId,
    required this.rackSlot,
    required this.resourceGroupName,
    required this.serialNumber,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalMachineName': ?bareMetalMachineName,
      'bmcConnectionString': bmcConnectionString,
      'bmcCredentials': pulumi.Input.mapInputValue<AdministrativeCredentials, Map<String, dynamic>>(bmcCredentials, (value) => value.toMap()),
      'bmcMacAddress': bmcMacAddress,
      'bootMacAddress': bootMacAddress,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'machineClusterVersion': ?machineClusterVersion,
      'machineDetails': machineDetails,
      'machineName': machineName,
      'machineSkuId': machineSkuId,
      'rackId': rackId,
      'rackSlot': rackSlot,
      'resourceGroupName': resourceGroupName,
      'serialNumber': serialNumber,
      'tags': ?tags,
    };
  }

  factory BareMetalMachineArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalMachineArgs(
      bareMetalMachineName: map['bareMetalMachineName'] == null ? null : (map['bareMetalMachineName']! as String).input(),
      bmcConnectionString: (map['bmcConnectionString'] as String).input(),
      bmcCredentials: (AdministrativeCredentials.fromMap((map['bmcCredentials'] as Map).cast<String, dynamic>())).input(),
      bmcMacAddress: (map['bmcMacAddress'] as String).input(),
      bootMacAddress: (map['bootMacAddress'] as String).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      machineClusterVersion: map['machineClusterVersion'] == null ? null : (map['machineClusterVersion']! as String).input(),
      machineDetails: (map['machineDetails'] as String).input(),
      machineName: (map['machineName'] as String).input(),
      machineSkuId: (map['machineSkuId'] as String).input(),
      rackId: (map['rackId'] as String).input(),
      rackSlot: (map['rackSlot'] as double).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serialNumber: (map['serialNumber'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

