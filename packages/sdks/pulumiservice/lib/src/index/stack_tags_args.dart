// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stack_tags_args_doc}
/// The set of arguments for StackTags.
/// {@endtemplate}
/// {@macro pulumi_index_stack_tags_args_doc}
class StackTagsArgs {
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String> project;
  /// Stack name.
  final pulumi.Input<String> stack;
  /// Map of tag names to values. Each entry represents a stack tag.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [StackTagsArgs].
  /// [organization] Organization name.
  /// [project] Project name.
  /// [stack] Stack name.
  /// [tags] Map of tag names to values. Each entry represents a stack tag.
  const StackTagsArgs({
    required this.organization,
    required this.project,
    required this.stack,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'project': project,
      'stack': stack,
      'tags': tags,
    };
  }

  factory StackTagsArgs.fromMap(Map<String, dynamic> map) {
    return StackTagsArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      stack: pulumi.Input.fromValue(map['stack'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
