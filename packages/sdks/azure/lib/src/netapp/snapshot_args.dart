// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_netapp_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The name of the NetApp Snapshot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> poolName;

  /// The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumeName;

  /// Creates a new [SnapshotArgs].
  /// [accountName] The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Snapshot. Changing this forces a new resource to be created.
  /// [poolName] The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  /// [volumeName] The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  SnapshotArgs({
    required this.accountName,
    this.location,
    this.name,
    required this.poolName,
    required this.resourceGroupName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'name': ?name,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
