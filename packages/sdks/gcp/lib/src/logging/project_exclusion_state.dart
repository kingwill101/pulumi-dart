// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectExclusion resources.
class ProjectExclusionState {
  /// A human-readable description.
  final pulumi.Input<String?>? description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool?>? disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String?>? filter;
  /// The name of the logging exclusion.
  final pulumi.Input<String?>? name;
  /// The project to create the exclusion in. If omitted, the project associated with the provider is
  /// used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ProjectExclusionState].
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [name] The name of the logging exclusion.
  /// [project] The project to create the exclusion in. If omitted, the project associated with the provider is
  const ProjectExclusionState({
    this.description,
    this.disabled,
    this.filter,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': ?filter,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ProjectExclusionState.fromMap(Map<String, dynamic> map) {
    return ProjectExclusionState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
