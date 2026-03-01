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
    pulumi.Output<String>? instance,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? zone,
  }) :
      instance = pulumi.Input.asOptionalInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

