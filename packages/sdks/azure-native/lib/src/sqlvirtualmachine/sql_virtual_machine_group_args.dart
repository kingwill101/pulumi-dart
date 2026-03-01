// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wsfc_domain_profile.dart';

/// {@template pulumi_sqlvirtualmachine_sql_virtual_machine_group_args_doc}
/// The set of arguments for SqlVirtualMachineGroup.
/// {@endtemplate}
/// {@macro pulumi_sqlvirtualmachine_sql_virtual_machine_group_args_doc}
class SqlVirtualMachineGroupArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
  final pulumi.Input<String>? sqlImageOffer;
  /// SQL image sku.
  final pulumi.Input<String>? sqlImageSku;
  /// Name of the SQL virtual machine group.
  final pulumi.Input<String>? sqlVirtualMachineGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Cluster Active Directory domain profile.
  final pulumi.Input<WsfcDomainProfile>? wsfcDomainProfile;

  /// Creates a new [SqlVirtualMachineGroupArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlImageOffer] SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
  /// [sqlImageSku] SQL image sku.
  /// [sqlVirtualMachineGroupName] Name of the SQL virtual machine group.
  /// [tags] Resource tags.
  /// [wsfcDomainProfile] Cluster Active Directory domain profile.
  SqlVirtualMachineGroupArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlImageOffer,
    pulumi.Output<String>? sqlImageSku,
    pulumi.Output<String>? sqlVirtualMachineGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<WsfcDomainProfile>? wsfcDomainProfile,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlImageOffer = pulumi.Input.asOptionalInput<String>(sqlImageOffer),
      sqlImageSku = pulumi.Input.asOptionalInput<String>(sqlImageSku),
      sqlVirtualMachineGroupName = pulumi.Input.asOptionalInput<String>(sqlVirtualMachineGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      wsfcDomainProfile = pulumi.Input.asOptionalInput<WsfcDomainProfile>(wsfcDomainProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'sqlVirtualMachineGroupName': ?sqlVirtualMachineGroupName,
      'tags': ?tags,
      'wsfcDomainProfile': ?pulumi.Input.mapOptionalInputValue<WsfcDomainProfile, Map<String, dynamic>>(wsfcDomainProfile, (value) => value.toMap()),
    };
  }

  factory SqlVirtualMachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return SqlVirtualMachineGroupArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlImageOffer: map['sqlImageOffer'] == null ? null : pulumi.Output.create<String>(map['sqlImageOffer'] as String),
      sqlImageSku: map['sqlImageSku'] == null ? null : pulumi.Output.create<String>(map['sqlImageSku'] as String),
      sqlVirtualMachineGroupName: map['sqlVirtualMachineGroupName'] == null ? null : pulumi.Output.create<String>(map['sqlVirtualMachineGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      wsfcDomainProfile: map['wsfcDomainProfile'] == null ? null : pulumi.Output.create<WsfcDomainProfile>(WsfcDomainProfile.fromMap((map['wsfcDomainProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

