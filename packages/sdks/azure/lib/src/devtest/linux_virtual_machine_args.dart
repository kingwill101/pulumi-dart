// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_gallery_image_reference.dart';
import 'linux_virtual_machine_inbound_nat_rule.dart';

/// {@template pulumi_devtest_linux_virtual_machine_linux_virtual_machine_args_doc}
/// The set of arguments for LinuxVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_devtest_linux_virtual_machine_linux_virtual_machine_args_doc}
class LinuxVirtualMachineArgs {
  /// Can this Virtual Machine be claimed by users? Defaults to `true`.
  final pulumi.Input<bool>? allowClaim;
  /// Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? disallowPublicIpAddress;
  /// A `gallery_image_reference` block as defined below.
  final pulumi.Input<LinuxVirtualMachineGalleryImageReference> galleryImageReference;
  /// One or more `inbound_nat_rule` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If any `inbound_nat_rule` blocks are specified then `disallow_public_ip_address` must be set to `true`.
  final pulumi.Input<List<LinuxVirtualMachineInboundNatRule>>? inboundNatRules;
  /// Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> labName;
  /// The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> labSubnetName;
  /// The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> labVirtualNetworkId;
  /// Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The validation requirements for the Name change based on the `os_type` used in this Virtual Machine. For a Linux VM the name must be between 1-62 characters, and for a Windows VM the name must be between 1-15 characters. It must begin and end with a letter or number, and cannot be all numbers.
  final pulumi.Input<String>? name;
  /// Any notes about the Virtual Machine.
  final pulumi.Input<String>? notes;
  /// The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created.
  final pulumi.Input<String> size;
  /// The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One or either `password` or `ssh_key` must be specified.
  final pulumi.Input<String>? sshKey;
  /// The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [LinuxVirtualMachineArgs].
  /// [allowClaim] Can this Virtual Machine be claimed by users? Defaults to `true`.
  /// [disallowPublicIpAddress] Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  /// [galleryImageReference] A `gallery_image_reference` block as defined below.
  /// [inboundNatRules] One or more `inbound_nat_rule` blocks as defined below. Changing this forces a new resource to be created.
  /// [labName] Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created.
  /// [labSubnetName] The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created.
  /// [labVirtualNetworkId] The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created.
  /// [notes] Any notes about the Virtual Machine.
  /// [password] The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [size] The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created.
  /// [sshKey] The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  /// [storageType] The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [username] The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  LinuxVirtualMachineArgs({
    this.allowClaim,
    this.disallowPublicIpAddress,
    required this.galleryImageReference,
    this.inboundNatRules,
    required this.labName,
    required this.labSubnetName,
    required this.labVirtualNetworkId,
    this.location,
    this.name,
    this.notes,
    this.password,
    required this.resourceGroupName,
    required this.size,
    this.sshKey,
    required this.storageType,
    this.tags,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClaim': ?allowClaim,
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'galleryImageReference': pulumi.Input.mapInputValue<LinuxVirtualMachineGalleryImageReference, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'inboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineInboundNatRule>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<LinuxVirtualMachineInboundNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labName': labName,
      'labSubnetName': labSubnetName,
      'labVirtualNetworkId': labVirtualNetworkId,
      'location': ?location,
      'name': ?name,
      'notes': ?notes,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'size': size,
      'sshKey': ?sshKey,
      'storageType': storageType,
      'tags': ?tags,
      'username': username,
    };
  }

  factory LinuxVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineArgs(
      allowClaim: map['allowClaim'] == null ? null : (map['allowClaim']! as bool).input(),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : (map['disallowPublicIpAddress']! as bool).input(),
      galleryImageReference: (LinuxVirtualMachineGalleryImageReference.fromMap((map['galleryImageReference'] as Map).cast<String, dynamic>())).input(),
      inboundNatRules: map['inboundNatRules'] == null ? null : (pulumi.Input.decodeList<LinuxVirtualMachineInboundNatRule>(map['inboundNatRules']!, (value) => LinuxVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labName: (map['labName'] as String).input(),
      labSubnetName: (map['labSubnetName'] as String).input(),
      labVirtualNetworkId: (map['labVirtualNetworkId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      size: (map['size'] as String).input(),
      sshKey: map['sshKey'] == null ? null : (map['sshKey']! as String).input(),
      storageType: (map['storageType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      username: (map['username'] as String).input(),
    );
  }
}

