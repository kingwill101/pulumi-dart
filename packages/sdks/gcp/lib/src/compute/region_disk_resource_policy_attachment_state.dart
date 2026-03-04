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
    this.disk,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': ?disk,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RegionDiskResourcePolicyAttachmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionDiskResourcePolicyAttachmentState(
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
