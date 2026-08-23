// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_gallery_image_reference.dart';
import 'linux_virtual_machine_inbound_nat_rule.dart';

/// Input properties used for looking up and filtering LinuxVirtualMachine resources.
class LinuxVirtualMachineState {
  /// Can this Virtual Machine be claimed by users? Defaults to `true`.
  final pulumi.Input<bool>? allowClaim;
  /// Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? disallowPublicIpAddress;
  /// The FQDN of the Virtual Machine.
  final pulumi.Input<String>? fqdn;
  /// A `galleryImageReference` block as defined below.
  final pulumi.Input<LinuxVirtualMachineGalleryImageReference>? galleryImageReference;
  /// One or more `inboundNatRule` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If any `inboundNatRule` blocks are specified then `disallowPublicIpAddress` must be set to `true`.
  final pulumi.Input<List<LinuxVirtualMachineInboundNatRule>>? inboundNatRules;
  /// Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? labName;
  /// The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? labSubnetName;
  /// The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? labVirtualNetworkId;
  /// Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The validation requirements for the Name change based on the `osType` used in this Virtual Machine. For a Linux VM the name must be between 1-62 characters, and for a Windows VM the name must be between 1-15 characters. It must begin and end with a letter or number, and cannot be all numbers.
  final pulumi.Input<String>? name;
  /// Any notes about the Virtual Machine.
  final pulumi.Input<String>? notes;
  /// The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Machine Size to use for this Virtual Machine, such as `Standard_D4_v5`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? size;
  /// The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** One or either `password` or `sshKey` must be specified.
  final pulumi.Input<String>? sshKey;
  /// The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The unique immutable identifier of the Virtual Machine.
  final pulumi.Input<String>? uniqueIdentifier;
  /// The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? username;

  /// Creates a new [LinuxVirtualMachineState].
  /// [allowClaim] Can this Virtual Machine be claimed by users? Defaults to `true`.
  /// [disallowPublicIpAddress] Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  /// [fqdn] The FQDN of the Virtual Machine.
  /// [galleryImageReference] A `galleryImageReference` block as defined below.
  /// [inboundNatRules] One or more `inboundNatRule` blocks as defined below. Changing this forces a new resource to be created.
  /// [labName] Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created.
  /// [labSubnetName] The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created.
  /// [labVirtualNetworkId] The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created.
  /// [notes] Any notes about the Virtual Machine.
  /// [password] The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [size] The Machine Size to use for this Virtual Machine, such as `Standard_D4_v5`. Changing this forces a new resource to be created.
  /// [sshKey] The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  /// [storageType] The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uniqueIdentifier] The unique immutable identifier of the Virtual Machine.
  /// [username] The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  const LinuxVirtualMachineState({
    this.allowClaim,
    this.disallowPublicIpAddress,
    this.fqdn,
    this.galleryImageReference,
    this.inboundNatRules,
    this.labName,
    this.labSubnetName,
    this.labVirtualNetworkId,
    this.location,
    this.name,
    this.notes,
    this.password,
    this.resourceGroupName,
    this.size,
    this.sshKey,
    this.storageType,
    this.tags,
    this.uniqueIdentifier,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClaim': ?allowClaim,
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'fqdn': ?fqdn,
      'galleryImageReference': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineGalleryImageReference, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'inboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineInboundNatRule>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<LinuxVirtualMachineInboundNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labName': ?labName,
      'labSubnetName': ?labSubnetName,
      'labVirtualNetworkId': ?labVirtualNetworkId,
      'location': ?location,
      'name': ?name,
      'notes': ?notes,
      'password': ?password,
      'resourceGroupName': ?resourceGroupName,
      'size': ?size,
      'sshKey': ?sshKey,
      'storageType': ?storageType,
      'tags': ?tags,
      'uniqueIdentifier': ?uniqueIdentifier,
      'username': ?username,
    };
  }

  factory LinuxVirtualMachineState.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineState(
      allowClaim: (() { final guardedValue = map['allowClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disallowPublicIpAddress: (() { final guardedValue = map['disallowPublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryImageReference: (() { final guardedValue = map['galleryImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxVirtualMachineGalleryImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxVirtualMachineInboundNatRule>(guardedValue, (value) => LinuxVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labName: (() { final guardedValue = map['labName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labSubnetName: (() { final guardedValue = map['labSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labVirtualNetworkId: (() { final guardedValue = map['labVirtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshKey: (() { final guardedValue = map['sshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
