// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicyAttachment resources.
class ResourcePolicyAttachmentState {
  /// The name of the instance in which the resource policies are attached to.
  final pulumi.Input<String>? instance;

  /// The resource policy to be attached to the instance for scheduling start/stop
  /// operations. Do not specify the self link.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the zone where the instance resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [ResourcePolicyAttachmentState].
  /// [instance] The name of the instance in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the instance for scheduling start/stop
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the instance resides.
  ResourcePolicyAttachmentState({
    this.instance,
    this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'name': ?name,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory ResourcePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAttachmentState(
      instance: (() {
        final guardedValue = map['instance'];
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
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
