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
    this.description,
    this.disabled,
    this.filter,
    this.folder,
    this.name,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

