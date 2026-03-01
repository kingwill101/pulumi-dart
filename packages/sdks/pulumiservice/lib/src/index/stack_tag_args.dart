// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stack_tag_args_doc}
/// The set of arguments for StackTag.
/// {@endtemplate}
/// {@macro pulumi_index_stack_tag_args_doc}
class StackTagArgs {
  /// Name of the tag. The 'key' part of the key=value pair
  final pulumi.Input<String> name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String> project;
  /// Stack name.
  final pulumi.Input<String> stack;
  /// Value of the tag. The 'value' part of the key=value pair
  final pulumi.Input<String> value;

  /// Creates a new [StackTagArgs].
  /// [name] Name of the tag. The 'key' part of the key=value pair
  /// [organization] Organization name.
  /// [project] Project name.
  /// [stack] Stack name.
  /// [value] Value of the tag. The 'value' part of the key=value pair
  StackTagArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> project,
    required pulumi.Output<String> stack,
    required pulumi.Output<String> value,
  }) :
      name = pulumi.Input.asInput<String>(name),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asInput<String>(project),
      stack = pulumi.Input.asInput<String>(stack),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'organization': organization,
      'project': project,
      'stack': stack,
      'value': value,
    };
  }

  factory StackTagArgs.fromMap(Map<String, dynamic> map) {
    return StackTagArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
      stack: pulumi.Output.create<String>(map['stack'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

