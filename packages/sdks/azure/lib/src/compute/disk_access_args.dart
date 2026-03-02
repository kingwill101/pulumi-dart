// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_disk_access_disk_access_args_doc}
/// The set of arguments for DiskAccess.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_access_disk_access_args_doc}
class DiskAccessArgs {
  /// The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Disk Access.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskAccessArgs].
  /// [location] The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created.
  /// [name] The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created.
  /// [resourceGroupName] The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created.
  /// [tags] A mapping of tags which should be assigned to the Disk Access.
  DiskAccessArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DiskAccessArgs.fromMap(Map<String, dynamic> map) {
    return DiskAccessArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

