// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationExclusion resources.
class OrganizationExclusionState {
  /// A human-readable description.
  final pulumi.Input<String>? description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;
  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;
  /// The organization to create the exclusion in.
  final pulumi.Input<String>? orgId;

  /// Creates a new [OrganizationExclusionState].
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [name] The name of the logging exclusion.
  /// [orgId] The organization to create the exclusion in.
  OrganizationExclusionState({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': ?filter,
      'name': ?name,
      'orgId': ?orgId,
    };
  }

  factory OrganizationExclusionState.fromMap(Map<String, dynamic> map) {
    return OrganizationExclusionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
    );
  }
}

