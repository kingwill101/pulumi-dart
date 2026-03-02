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
    this.location,
    this.name,
    this.resourceGroupName,
    this.sqlImageOffer,
    this.sqlImageSku,
    this.tags,
    this.wsfcDomainProfile,
  });

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
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sqlImageOffer: map['sqlImageOffer'] == null ? null : (map['sqlImageOffer'] as String).input(),
      sqlImageSku: map['sqlImageSku'] == null ? null : (map['sqlImageSku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      wsfcDomainProfile: map['wsfcDomainProfile'] == null ? null : (VirtualMachineGroupWsfcDomainProfile.fromMap((map['wsfcDomainProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

