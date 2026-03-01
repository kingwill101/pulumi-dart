// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_gallery_image_reference.dart';
import 'windows_virtual_machine_inbound_nat_rule.dart';

/// {@template pulumi_devtest_windows_virtual_machine_windows_virtual_machine_args_doc}
/// The set of arguments for WindowsVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_devtest_windows_virtual_machine_windows_virtual_machine_args_doc}
class WindowsVirtualMachineArgs {
  /// Can this Virtual Machine be claimed by users? Defaults to `true`.
  final pulumi.Input<bool>? allowClaim;
  /// Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? disallowPublicIpAddress;
  /// A `gallery_image_reference` block as defined below.
  final pulumi.Input<WindowsVirtualMachineGalleryImageReference> galleryImageReference;
  /// One or more `inbound_nat_rule` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If any `inbound_nat_rule` blocks are specified then `disallow_public_ip_address` must be set to `true`.
  final pulumi.Input<List<WindowsVirtualMachineInboundNatRule>>? inboundNatRules;
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
  final pulumi.Input<String> password;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created.
  final pulumi.Input<String> size;
  /// The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [WindowsVirtualMachineArgs].
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
  /// [storageType] The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [username] The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  WindowsVirtualMachineArgs({
    pulumi.Output<bool>? allowClaim,
    pulumi.Output<bool>? disallowPublicIpAddress,
    required pulumi.Output<WindowsVirtualMachineGalleryImageReference> galleryImageReference,
    pulumi.Output<List<WindowsVirtualMachineInboundNatRule>>? inboundNatRules,
    required pulumi.Output<String> labName,
    required pulumi.Output<String> labSubnetName,
    required pulumi.Output<String> labVirtualNetworkId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
    required pulumi.Output<String> password,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> size,
    required pulumi.Output<String> storageType,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> username,
  }) :
      allowClaim = pulumi.Input.asOptionalInput<bool>(allowClaim),
      disallowPublicIpAddress = pulumi.Input.asOptionalInput<bool>(disallowPublicIpAddress),
      galleryImageReference = pulumi.Input.asInput<WindowsVirtualMachineGalleryImageReference>(galleryImageReference),
      inboundNatRules = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineInboundNatRule>>(inboundNatRules),
      labName = pulumi.Input.asInput<String>(labName),
      labSubnetName = pulumi.Input.asInput<String>(labSubnetName),
      labVirtualNetworkId = pulumi.Input.asInput<String>(labVirtualNetworkId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      password = pulumi.Input.asInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      size = pulumi.Input.asInput<String>(size),
      storageType = pulumi.Input.asInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClaim': ?allowClaim,
      'disallowPublicIpAddress': ?disallowPublicIpAddress,
      'galleryImageReference': pulumi.Input.mapInputValue<WindowsVirtualMachineGalleryImageReference, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'inboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineInboundNatRule>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<WindowsVirtualMachineInboundNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labName': labName,
      'labSubnetName': labSubnetName,
      'labVirtualNetworkId': labVirtualNetworkId,
      'location': ?location,
      'name': ?name,
      'notes': ?notes,
      'password': password,
      'resourceGroupName': resourceGroupName,
      'size': size,
      'storageType': storageType,
      'tags': ?tags,
      'username': username,
    };
  }

  factory WindowsVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineArgs(
      allowClaim: map['allowClaim'] == null ? null : pulumi.Output.create<bool>(map['allowClaim'] as bool),
      disallowPublicIpAddress: map['disallowPublicIpAddress'] == null ? null : pulumi.Output.create<bool>(map['disallowPublicIpAddress'] as bool),
      galleryImageReference: pulumi.Output.create<WindowsVirtualMachineGalleryImageReference>(WindowsVirtualMachineGalleryImageReference.fromMap((map['galleryImageReference'] as Map).cast<String, dynamic>())),
      inboundNatRules: map['inboundNatRules'] == null ? null : pulumi.Output.create<List<WindowsVirtualMachineInboundNatRule>>(pulumi.Input.decodeList<WindowsVirtualMachineInboundNatRule>(map['inboundNatRules'], (value) => WindowsVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>()))),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      labSubnetName: pulumi.Output.create<String>(map['labSubnetName'] as String),
      labVirtualNetworkId: pulumi.Output.create<String>(map['labVirtualNetworkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      size: pulumi.Output.create<String>(map['size'] as String),
      storageType: pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

