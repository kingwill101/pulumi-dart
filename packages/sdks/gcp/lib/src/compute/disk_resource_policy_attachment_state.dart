// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DiskResourcePolicyAttachment resources.
class DiskResourcePolicyAttachmentState {
  /// The name of the disk in which the resource policies are attached to.
  final pulumi.Input<String>? disk;
  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the disk resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [DiskResourcePolicyAttachmentState].
  /// [disk] The name of the disk in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the disk for scheduling snapshot
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the disk resides.
  DiskResourcePolicyAttachmentState({
    this.disk,
    this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': ?disk,
      'name': ?name,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory DiskResourcePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return DiskResourcePolicyAttachmentState(
      disk: map['disk'] == null ? null : (map['disk']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

