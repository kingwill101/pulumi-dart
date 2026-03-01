// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FolderExclusion resources.
class FolderExclusionState {
  /// A human-readable description.
  final pulumi.Input<String>? description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;
  /// The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// accepted.
  final pulumi.Input<String>? folder;
  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderExclusionState].
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [folder] The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// [name] The name of the logging exclusion.
  FolderExclusionState({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? name,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': ?filter,
      'folder': ?folder,
      'name': ?name,
    };
  }

  factory FolderExclusionState.fromMap(Map<String, dynamic> map) {
    return FolderExclusionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

