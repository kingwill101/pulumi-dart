// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the NetApp Snapshot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? poolName;
  /// The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [SnapshotState].
  /// [accountName] The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Snapshot. Changing this forces a new resource to be created.
  /// [poolName] The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  /// [volumeName] The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  SnapshotState({
    this.accountName,
    this.location,
    this.name,
    this.poolName,
    this.resourceGroupName,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'location': ?location,
      'name': ?name,
      'poolName': ?poolName,
      'resourceGroupName': ?resourceGroupName,
      'volumeName': ?volumeName,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      poolName: map['poolName'] == null ? null : (map['poolName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName'] as String).input(),
    );
  }
}

