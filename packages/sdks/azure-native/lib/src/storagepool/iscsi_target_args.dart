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
    required pulumi.Output<String> aclMode,
    required pulumi.Output<String> diskPoolName,
    pulumi.Output<String>? iscsiTargetName,
    pulumi.Output<List<IscsiLun>>? luns,
    pulumi.Output<String>? managedBy,
    pulumi.Output<List<String>>? managedByExtended,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<Acl>>? staticAcls,
    pulumi.Output<String>? targetIqn,
  }) :
      aclMode = pulumi.Input.asInput<String>(aclMode),
      diskPoolName = pulumi.Input.asInput<String>(diskPoolName),
      iscsiTargetName = pulumi.Input.asOptionalInput<String>(iscsiTargetName),
      luns = pulumi.Input.asOptionalInput<List<IscsiLun>>(luns),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      managedByExtended = pulumi.Input.asOptionalInput<List<String>>(managedByExtended),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      staticAcls = pulumi.Input.asOptionalInput<List<Acl>>(staticAcls),
      targetIqn = pulumi.Input.asOptionalInput<String>(targetIqn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclMode': aclMode,
      'diskPoolName': diskPoolName,
      'iscsiTargetName': ?iscsiTargetName,
      'luns': ?pulumi.Input.mapOptionalInputValue<List<IscsiLun>, List<Map<String, dynamic>>>(luns, (value) => pulumi.Input.encodeList<IscsiLun, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedBy': ?managedBy,
      'managedByExtended': ?managedByExtended,
      'resourceGroupName': resourceGroupName,
      'staticAcls': ?pulumi.Input.mapOptionalInputValue<List<Acl>, List<Map<String, dynamic>>>(staticAcls, (value) => pulumi.Input.encodeList<Acl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetIqn': ?targetIqn,
    };
  }

  factory IscsiTargetArgs.fromMap(Map<String, dynamic> map) {
    return IscsiTargetArgs(
      aclMode: pulumi.Output.create<String>(map['aclMode'] as String),
      diskPoolName: pulumi.Output.create<String>(map['diskPoolName'] as String),
      iscsiTargetName: map['iscsiTargetName'] == null ? null : pulumi.Output.create<String>(map['iscsiTargetName'] as String),
      luns: map['luns'] == null ? null : pulumi.Output.create<List<IscsiLun>>(pulumi.Input.decodeList<IscsiLun>(map['luns'], (value) => IscsiLun.fromMap((value as Map).cast<String, dynamic>()))),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      managedByExtended: map['managedByExtended'] == null ? null : pulumi.Output.create<List<String>>((map['managedByExtended'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      staticAcls: map['staticAcls'] == null ? null : pulumi.Output.create<List<Acl>>(pulumi.Input.decodeList<Acl>(map['staticAcls'], (value) => Acl.fromMap((value as Map).cast<String, dynamic>()))),
      targetIqn: map['targetIqn'] == null ? null : pulumi.Output.create<String>(map['targetIqn'] as String),
    );
  }
}

