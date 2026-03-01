// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_snapshot_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_snapshot_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// The name of the NetApp Account where the NetApp Pool exists.
  final pulumi.Input<String> accountName;
  /// The name of the NetApp Snapshot.
  final pulumi.Input<String> name;
  /// The name of the NetApp Pool where the NetApp Volume exists.
  final pulumi.Input<String> poolName;
  /// The Name of the Resource Group where the NetApp Snapshot exists.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the NetApp Volume where the NetApp Snapshot exists.
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetSnapshotArgs].
  /// [accountName] The name of the NetApp Account where the NetApp Pool exists.
  /// [name] The name of the NetApp Snapshot.
  /// [poolName] The name of the NetApp Pool where the NetApp Volume exists.
  /// [resourceGroupName] The Name of the Resource Group where the NetApp Snapshot exists.
  /// [volumeName] The name of the NetApp Volume where the NetApp Snapshot exists.
  GetSnapshotArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

