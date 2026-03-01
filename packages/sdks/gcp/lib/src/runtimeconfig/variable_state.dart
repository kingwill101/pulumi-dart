// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Variable resources.
class VariableState {
  /// The name of the variable to manage. Note that variable
  /// names can be hierarchical using slashes (e.g. "prod-variables/hostname").
  final pulumi.Input<String>? name;
  /// The name of the RuntimeConfig resource containing this
  /// variable.
  final pulumi.Input<String>? parent;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// or `value` - (Required) The content to associate with the variable.
  /// Exactly one of `text` or `variable` must be specified. If `text` is specified,
  /// it must be a valid UTF-8 string and less than 4096 bytes in length. If `value`
  /// is specified, it must be base64 encoded and less than 4096 bytes in length.
  ///
  /// - - -
  final pulumi.Input<String>? text;
  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds, representing when the variable was last updated.
  /// Example: "2016-10-09T12:33:37.578138407Z".
  final pulumi.Input<String>? updateTime;
  final pulumi.Input<String>? value;

  /// Creates a new [VariableState].
  /// [name] The name of the variable to manage. Note that variable
  /// [parent] The name of the RuntimeConfig resource containing this
  /// [project] The ID of the project in which the resource belongs. If it
  /// [text] or `value` - (Required) The content to associate with the variable.
  /// [updateTime] (Computed) The timestamp in RFC3339 UTC "Zulu" format,
  /// [value] Optional.
  VariableState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? project,
    pulumi.Output<String>? text,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? value,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      project = pulumi.Input.asOptionalInput<String>(project),
      text = pulumi.Input.asOptionalInput<String>(text),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parent': ?parent,
      'project': ?project,
      'text': ?text,
      'updateTime': ?updateTime,
      'value': ?value,
    };
  }

  factory VariableState.fromMap(Map<String, dynamic> map) {
    return VariableState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      text: map['text'] == null ? null : pulumi.Output.create<String>(map['text'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

