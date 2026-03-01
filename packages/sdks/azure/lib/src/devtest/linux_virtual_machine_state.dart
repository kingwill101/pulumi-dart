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
  /// A `gallery_image_reference` block as defined below.
  final pulumi.Input<LinuxVirtualMachineGalleryImageReference>? galleryImageReference;
  /// One or more `inbound_nat_rule` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If any `inbound_nat_rule` blocks are specified then `disallow_public_ip_address` must be set to `true`.
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
  /// > **Note:** The validation requirements for the Name change based on the `os_type` used in this Virtual Machine. For a Linux VM the name must be between 1-62 characters, and for a Windows VM the name must be between 1-15 characters. It must begin and end with a letter or number, and cannot be all numbers.
  final pulumi.Input<String>? name;
  /// Any notes about the Virtual Machine.
  final pulumi.Input<String>? notes;
  /// The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? size;
  /// The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One or either `password` or `ssh_key` must be specified.
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
  /// [uniqueIdentifier] The unique immutable identifier of the Virtual Machine.
  /// [username] The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  LinuxVirtualMachineState({
    pulumi.Output<bool>? allowClaim,
    pulumi.Output<bool>? disallowPublicIpAddress,
    pulumi.Output<String>? fqdn,
    pulumi.Output<LinuxVirtualMachineGalleryImageReference>? galleryImageReference,
    pulumi.Output<List<LinuxVirtualMachineInboundNatRule>>? inboundNatRules,
    pulumi.Output<String>? labName,
    pulumi.Output<String>? labSubnetName,
    pulumi.Output<String>? labVirtualNetworkId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? password,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? size,
    pulumi.Output<String>? sshKey,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uniqueIdentifier,
    pulumi.Output<String>? username,
  }) :
      allowClaim = pulumi.Input.asOptionalInput<bool>(allowClaim),
      disallowPublicIpAddress = pulumi.Input.asOptionalInput<bool>(disallowPublicIpAddress),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      galleryImageReference = pulumi.Input.asOptionalInput<LinuxVirtualMachineGalleryImageReference>(galleryImageReference),
      inboundNatRules = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineInboundNatRule>>(inboundNatRules),
      labName = pulumi.Input.asOptionalInput<String>(labName),
      labSubnetName = pulumi.Input.asOptionalInput<String>(labSubnetName),
      labVirtualNetworkId = pulumi.Input.asOptionalInput<String>(labVirtualNetworkId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      size = pulumi.Input.asOptionalInput<String>(size),
      sshKey = pulumi.Input.asOptionalInput<String>(sshKey),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uniqueIdentifier = pulumi.Input.asOptionalInput<String>(uniqueIdentifier),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      allowClaim: map['allowClaim'] == null ? null : pulumi.Output.create<bool>(map['allowClaim'] as bool),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : pulumi.Output.create<bool>(map['disallowPublicIpAddress'] as bool),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      galleryImageReference: map['galleryImageReference'] == null ? null : pulumi.Output.create<LinuxVirtualMachineGalleryImageReference>(LinuxVirtualMachineGalleryImageReference.fromMap((map['galleryImageReference'] as Map).cast<String, dynamic>())),
      inboundNatRules: map['inboundNatRules'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineInboundNatRule>>(pulumi.Input.decodeList<LinuxVirtualMachineInboundNatRule>(map['inboundNatRules'], (value) => LinuxVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>()))),
      labName: map['labName'] == null ? null : pulumi.Output.create<String>(map['labName'] as String),
      labSubnetName: map['labSubnetName'] == null ? null : pulumi.Output.create<String>(map['labSubnetName'] as String),
      labVirtualNetworkId: map['labVirtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['labVirtualNetworkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      sshKey: map['sshKey'] == null ? null : pulumi.Output.create<String>(map['sshKey'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uniqueIdentifier: map['uniqueIdentifier'] == null ? null : pulumi.Output.create<String>(map['uniqueIdentifier'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

