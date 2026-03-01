// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_group_wsfc_domain_profile.dart';

/// Input properties used for looking up and filtering VirtualMachineGroup resources.
class VirtualMachineGroupState {
  /// The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sqlImageOffer;
  /// The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`.
  final pulumi.Input<String>? sqlImageSku;
  /// A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `wsfc_domain_profile` block as defined below.
  final pulumi.Input<VirtualMachineGroupWsfcDomainProfile>? wsfcDomainProfile;

  /// Creates a new [VirtualMachineGroupState].
  /// [location] The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  /// [sqlImageOffer] The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created.
  /// [sqlImageSku] The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`.
  /// [tags] A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group.
  /// [wsfcDomainProfile] A `wsfc_domain_profile` block as defined below.
  VirtualMachineGroupState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sqlImageOffer,
    pulumi.Output<String>? sqlImageSku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<VirtualMachineGroupWsfcDomainProfile>? wsfcDomainProfile,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sqlImageOffer = pulumi.Input.asOptionalInput<String>(sqlImageOffer),
      sqlImageSku = pulumi.Input.asOptionalInput<String>(sqlImageSku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      wsfcDomainProfile = pulumi.Input.asOptionalInput<VirtualMachineGroupWsfcDomainProfile>(wsfcDomainProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'tags': ?tags,
      'wsfcDomainProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineGroupWsfcDomainProfile, Map<String, dynamic>>(wsfcDomainProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineGroupState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineGroupState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlImageOffer: map['sqlImageOffer'] == null ? null : pulumi.Output.create<String>(map['sqlImageOffer'] as String),
      sqlImageSku: map['sqlImageSku'] == null ? null : pulumi.Output.create<String>(map['sqlImageSku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      wsfcDomainProfile: map['wsfcDomainProfile'] == null ? null : pulumi.Output.create<VirtualMachineGroupWsfcDomainProfile>(VirtualMachineGroupWsfcDomainProfile.fromMap((map['wsfcDomainProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

