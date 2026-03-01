// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_project_exclusion_project_exclusion_args_doc}
/// The set of arguments for ProjectExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_project_exclusion_project_exclusion_args_doc}
class ProjectExclusionArgs {
  /// A human-readable description.
  final pulumi.Input<String>? description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;
  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;
  /// The project to create the exclusion in. If omitted, the project associated with the provider is
  /// used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectExclusionArgs].
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [name] The name of the logging exclusion.
  /// [project] The project to create the exclusion in. If omitted, the project associated with the provider is
  ProjectExclusionArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    required pulumi.Output<String> filter,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      filter = pulumi.Input.asInput<String>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ProjectExclusionArgs.fromMap(Map<String, dynamic> map) {
    return ProjectExclusionArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      filter: pulumi.Output.create<String>(map['filter'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

