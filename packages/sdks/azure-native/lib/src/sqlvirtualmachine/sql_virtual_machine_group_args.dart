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
    this.location,
    required this.resourceGroupName,
    this.sqlImageOffer,
    this.sqlImageSku,
    this.sqlVirtualMachineGroupName,
    this.tags,
    this.wsfcDomainProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sqlImageOffer': ?sqlImageOffer,
      'sqlImageSku': ?sqlImageSku,
      'sqlVirtualMachineGroupName': ?sqlVirtualMachineGroupName,
      'tags': ?tags,
      'wsfcDomainProfile':
          ?pulumi.Input.mapOptionalInputValue<
            WsfcDomainProfile,
            Map<String, dynamic>
          >(wsfcDomainProfile, (value) => value.toMap()),
    };
  }

  factory SqlVirtualMachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return SqlVirtualMachineGroupArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sqlImageOffer: (() {
        final guardedValue = map['sqlImageOffer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlImageSku: (() {
        final guardedValue = map['sqlImageSku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlVirtualMachineGroupName: (() {
        final guardedValue = map['sqlVirtualMachineGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      wsfcDomainProfile: (() {
        final guardedValue = map['wsfcDomainProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WsfcDomainProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
