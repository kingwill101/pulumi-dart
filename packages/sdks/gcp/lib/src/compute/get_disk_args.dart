// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_disk_get_disk_args_doc}
/// Arguments for getDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_get_disk_get_disk_args_doc}
class GetDiskArgs {
  /// The name of a specific disk.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the disk resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetDiskArgs].
  /// [name] The name of a specific disk.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the disk resides.
  GetDiskArgs({
    required this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

