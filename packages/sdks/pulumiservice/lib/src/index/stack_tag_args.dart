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
  const StackTagArgs({
    required this.name,
    required this.organization,
    required this.project,
    required this.stack,
    required this.value,
  });

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
      name: pulumi.Input.fromValue(map['name'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      stack: pulumi.Input.fromValue(map['stack'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
