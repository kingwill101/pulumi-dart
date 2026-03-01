// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagepool_get_iscsi_target_args_doc}
/// Arguments for getIscsiTarget.
/// {@endtemplate}
/// {@macro pulumi_storagepool_get_iscsi_target_args_doc}
class GetIscsiTargetArgs {
  /// The name of the Disk Pool.
  final pulumi.Input<String> diskPoolName;
  /// The name of the iSCSI Target.
  final pulumi.Input<String> iscsiTargetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIscsiTargetArgs].
  /// [diskPoolName] The name of the Disk Pool.
  /// [iscsiTargetName] The name of the iSCSI Target.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIscsiTargetArgs({
    required pulumi.Output<String> diskPoolName,
    required pulumi.Output<String> iscsiTargetName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      diskPoolName = pulumi.Input.asInput<String>(diskPoolName),
      iscsiTargetName = pulumi.Input.asInput<String>(iscsiTargetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskPoolName': diskPoolName,
      'iscsiTargetName': iscsiTargetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIscsiTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetIscsiTargetArgs(
      diskPoolName: pulumi.Output.create<String>(map['diskPoolName'] as String),
      iscsiTargetName: pulumi.Output.create<String>(map['iscsiTargetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

