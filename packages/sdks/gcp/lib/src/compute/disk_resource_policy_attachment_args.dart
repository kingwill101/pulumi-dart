// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_disk_resource_policy_attachment_disk_resource_policy_attachment_args_doc}
/// The set of arguments for DiskResourcePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_resource_policy_attachment_disk_resource_policy_attachment_args_doc}
class DiskResourcePolicyAttachmentArgs {
  /// The name of the disk in which the resource policies are attached to.
  final pulumi.Input<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the zone where the disk resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [DiskResourcePolicyAttachmentArgs].
  /// [disk] The name of the disk in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the disk for scheduling snapshot
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the disk resides.
  DiskResourcePolicyAttachmentArgs({
    required this.disk,
    this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'name': ?name,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory DiskResourcePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskResourcePolicyAttachmentArgs(
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
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
