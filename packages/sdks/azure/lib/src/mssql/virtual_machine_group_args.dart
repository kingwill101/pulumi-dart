// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_group_wsfc_domain_profile.dart';

/// {@template pulumi_mssql_virtual_machine_group_virtual_machine_group_args_doc}
/// The set of arguments for VirtualMachineGroup.
/// {@endtemplate}
/// {@macro pulumi_mssql_virtual_machine_group_virtual_machine_group_args_doc}
class VirtualMachineGroupArgs {
  /// The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlImageOffer;
  /// The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`.
  final pulumi.Input<String> sqlImageSku;
  /// A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `wsfc_domain_profile` block as defined below.
  final pulumi.Input<VirtualMachineGroupWsfcDomainProfile> wsfcDomainProfile;

  /// Creates a new [VirtualMachineGroupArgs].
  /// [location] The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created.
  /// [sqlImageOffer] The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created.
  /// [sqlImageSku] The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are `Developer` and `Enterprise`.
  /// [tags] A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group.
  /// [wsfcDomainProfile] A `wsfc_domain_profile` block as defined below.
  VirtualMachineGroupArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.sqlImageOffer,
    required this.sqlImageSku,
    this.tags,
    required this.wsfcDomainProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sqlImageOffer': sqlImageOffer,
      'sqlImageSku': sqlImageSku,
      'tags': ?tags,
      'wsfcDomainProfile': pulumi.Input.mapInputValue<VirtualMachineGroupWsfcDomainProfile, Map<String, dynamic>>(wsfcDomainProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineGroupArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlImageOffer: (map['sqlImageOffer'] as String).input(),
      sqlImageSku: (map['sqlImageSku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      wsfcDomainProfile: (VirtualMachineGroupWsfcDomainProfile.fromMap((map['wsfcDomainProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

