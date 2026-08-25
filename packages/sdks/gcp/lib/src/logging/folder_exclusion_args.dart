// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_folder_exclusion_folder_exclusion_args_doc}
/// The set of arguments for FolderExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_folder_exclusion_folder_exclusion_args_doc}
class FolderExclusionArgs {
  /// A human-readable description.
  final pulumi.Input<String?>? description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool?>? disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;
  /// The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// accepted.
  final pulumi.Input<String> folder;
  /// The name of the logging exclusion.
  final pulumi.Input<String?>? name;

  /// Creates a new [FolderExclusionArgs].
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [folder] The folder to be exported to the sink. Note that either [FOLDER_ID] or "folders/[FOLDER_ID]" is
  /// [name] The name of the logging exclusion.
  const FolderExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    required this.folder,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'folder': folder,
      'name': ?name,
    };
  }

  factory FolderExclusionArgs.fromMap(Map<String, dynamic> map) {
    return FolderExclusionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
