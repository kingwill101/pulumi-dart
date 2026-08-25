// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_snapshot_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_get_snapshot_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// A filter to retrieve the compute snapshot.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple compute snapshot match, either adjust the filter or specify `mostRecent`. One of `name` or `filter` must be provided.
  /// If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Example `sourceDisk eq '.*(.*/data-disk$).*'`
  final pulumi.Input<String?>? filter;
  /// If `filter` is provided, ensures the most recent snapshot is returned when multiple compute snapshot match.
  ///
  /// - - -
  final pulumi.Input<bool?>? mostRecent;
  /// The name of the compute snapshot. One of `name` or `filter` must be provided.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetSnapshotArgs].
  /// [filter] A filter to retrieve the compute snapshot.
  /// [mostRecent] If `filter` is provided, ensures the most recent snapshot is returned when multiple compute snapshot match.
  /// [name] The name of the compute snapshot. One of `name` or `filter` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  const GetSnapshotArgs({
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
