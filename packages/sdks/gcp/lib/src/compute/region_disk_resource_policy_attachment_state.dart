// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionDiskResourcePolicyAttachment resources.
class RegionDiskResourcePolicyAttachmentState {
  /// The name of the regional disk in which the resource policies are attached to.
  final pulumi.Input<String>? disk;
  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region where the disk resides.
  final pulumi.Input<String>? region;

  /// Creates a new [RegionDiskResourcePolicyAttachmentState].
  /// [disk] The name of the regional disk in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the disk for scheduling snapshot
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the disk resides.
  RegionDiskResourcePolicyAttachmentState({
    pulumi.Output<String>? disk,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      disk = pulumi.Input.asOptionalInput<String>(disk),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': ?disk,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RegionDiskResourcePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return RegionDiskResourcePolicyAttachmentState(
      disk: map['disk'] == null ? null : pulumi.Output.create<String>(map['disk'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

