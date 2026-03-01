// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_disk_get_region_disk_args_doc}
/// Arguments for getRegionDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_disk_get_region_disk_args_doc}
class GetRegionDiskArgs {
  /// The name of a specific disk.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region where the disk resides.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegionDiskArgs].
  /// [name] The name of a specific disk.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the disk resides.
  GetRegionDiskArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegionDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

