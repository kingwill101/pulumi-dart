// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl.dart';
import 'iscsi_lun.dart';

/// {@template pulumi_storagepool_iscsi_target_args_doc}
/// The set of arguments for IscsiTarget.
/// {@endtemplate}
/// {@macro pulumi_storagepool_iscsi_target_args_doc}
class IscsiTargetArgs {
  /// Mode for Target connectivity.
  final pulumi.Input<String> aclMode;

  /// The name of the Disk Pool.
  final pulumi.Input<String> diskPoolName;

  /// The name of the iSCSI Target.
  final pulumi.Input<String>? iscsiTargetName;

  /// List of LUNs to be exposed through iSCSI Target.
  final pulumi.Input<List<IscsiLun>>? luns;

  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final pulumi.Input<String>? managedBy;

  /// List of Azure resource ids that manage this resource.
  final pulumi.Input<List<String>>? managedByExtended;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
  final pulumi.Input<List<Acl>>? staticAcls;

  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  final pulumi.Input<String>? targetIqn;

  /// Creates a new [IscsiTargetArgs].
  /// [aclMode] Mode for Target connectivity.
  /// [diskPoolName] The name of the Disk Pool.
  /// [iscsiTargetName] The name of the iSCSI Target.
  /// [luns] List of LUNs to be exposed through iSCSI Target.
  /// [managedBy] Azure resource id. Indicates if this resource is managed by another Azure resource.
  /// [managedByExtended] List of Azure resource ids that manage this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [staticAcls] Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
  /// [targetIqn] iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  IscsiTargetArgs({
    required this.aclMode,
    required this.diskPoolName,
    this.iscsiTargetName,
    this.luns,
    this.managedBy,
    this.managedByExtended,
    required this.resourceGroupName,
    this.staticAcls,
    this.targetIqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclMode': aclMode,
      'diskPoolName': diskPoolName,
      'iscsiTargetName': ?iscsiTargetName,
      'luns':
          ?pulumi.Input.mapOptionalInputValue<
            List<IscsiLun>,
            List<Map<String, dynamic>>
          >(
            luns,
            (value) => pulumi.Input.encodeList<IscsiLun, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'managedBy': ?managedBy,
      'managedByExtended': ?managedByExtended,
      'resourceGroupName': resourceGroupName,
      'staticAcls':
          ?pulumi.Input.mapOptionalInputValue<
            List<Acl>,
            List<Map<String, dynamic>>
          >(
            staticAcls,
            (value) => pulumi.Input.encodeList<Acl, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'targetIqn': ?targetIqn,
    };
  }

  factory IscsiTargetArgs.fromMap(Map<String, dynamic> map) {
    return IscsiTargetArgs(
      aclMode: pulumi.Input.fromValue(map['aclMode'] as String),
      diskPoolName: pulumi.Input.fromValue(map['diskPoolName'] as String),
      iscsiTargetName: (() {
        final guardedValue = map['iscsiTargetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      luns: (() {
        final guardedValue = map['luns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IscsiLun>(
            guardedValue,
            (value) => IscsiLun.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      managedBy: (() {
        final guardedValue = map['managedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedByExtended: (() {
        final guardedValue = map['managedByExtended'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      staticAcls: (() {
        final guardedValue = map['staticAcls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Acl>(
            guardedValue,
            (value) => Acl.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      targetIqn: (() {
        final guardedValue = map['targetIqn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
