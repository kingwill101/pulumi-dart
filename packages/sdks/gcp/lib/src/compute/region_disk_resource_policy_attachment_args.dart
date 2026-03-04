// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_disk_resource_policy_attachment_region_disk_resource_policy_attachment_args_doc}
/// The set of arguments for RegionDiskResourcePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_region_disk_resource_policy_attachment_region_disk_resource_policy_attachment_args_doc}
class RegionDiskResourcePolicyAttachmentArgs {
  /// The name of the regional disk in which the resource policies are attached to.
  final pulumi.Input<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region where the disk resides.
  final pulumi.Input<String>? region;

  /// Creates a new [RegionDiskResourcePolicyAttachmentArgs].
  /// [disk] The name of the regional disk in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the disk for scheduling snapshot
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the disk resides.
  RegionDiskResourcePolicyAttachmentArgs({
    required this.disk,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RegionDiskResourcePolicyAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionDiskResourcePolicyAttachmentArgs(
      disk: pulumi.Input.fromValue(map['disk'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
