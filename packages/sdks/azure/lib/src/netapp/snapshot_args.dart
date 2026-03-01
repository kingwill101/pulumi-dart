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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

