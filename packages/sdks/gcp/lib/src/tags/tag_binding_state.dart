// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagBinding resources.
class TagBindingState {
  /// The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  final pulumi.Input<String>? name;
  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String>? parent;
  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [TagBindingState].
  /// [name] The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  /// [parent] The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  /// [tagValue] The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  TagBindingState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? tagValue,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      tagValue = pulumi.Input.asOptionalInput<String>(tagValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parent': ?parent,
      'tagValue': ?tagValue,
    };
  }

  factory TagBindingState.fromMap(Map<String, dynamic> map) {
    return TagBindingState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      tagValue: map['tagValue'] == null ? null : pulumi.Output.create<String>(map['tagValue'] as String),
    );
  }
}

