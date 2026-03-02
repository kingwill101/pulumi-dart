// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_tag_binding_tag_binding_args_doc}
/// The set of arguments for TagBinding.
/// {@endtemplate}
/// {@macro pulumi_tags_tag_binding_tag_binding_args_doc}
class TagBindingArgs {
  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String> parent;
  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  final pulumi.Input<String> tagValue;

  /// Creates a new [TagBindingArgs].
  /// [parent] The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  /// [tagValue] The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  TagBindingArgs({
    required this.parent,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'tagValue': tagValue,
    };
  }

  factory TagBindingArgs.fromMap(Map<String, dynamic> map) {
    return TagBindingArgs(
      parent: (map['parent'] as String).input(),
      tagValue: (map['tagValue'] as String).input(),
    );
  }
}

