// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_organization_exclusion_organization_exclusion_args_doc}
/// The set of arguments for OrganizationExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_organization_exclusion_organization_exclusion_args_doc}
class OrganizationExclusionArgs {
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

  /// The organization to create the exclusion in.
  final pulumi.Input<String> orgId;

  /// Creates a new [OrganizationExclusionArgs].
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [name] The name of the logging exclusion.
  /// [orgId] The organization to create the exclusion in.
  OrganizationExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': ?name,
      'orgId': orgId,
    };
  }

  factory OrganizationExclusionArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationExclusionArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
    );
  }
}
