// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_logical_view_logical_view_args_doc}
/// The set of arguments for LogicalView.
/// {@endtemplate}
/// {@macro pulumi_bigtable_logical_view_logical_view_args_doc}
class LogicalViewArgs {
  /// Set to true to make the logical view protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// The name of the instance to create the logical view within.
  final pulumi.Input<String>? instance;
  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String> logicalViewId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The logical view's select query.
  final pulumi.Input<String> query;

  /// Creates a new [LogicalViewArgs].
  /// [deletionProtection] Set to true to make the logical view protected against deletion.
  /// [instance] The name of the instance to create the logical view within.
  /// [logicalViewId] The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The logical view's select query.
  LogicalViewArgs({
    this.deletionProtection,
    this.instance,
    required this.logicalViewId,
    this.project,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'instance': ?instance,
      'logicalViewId': logicalViewId,
      'project': ?project,
      'query': query,
    };
  }

  factory LogicalViewArgs.fromMap(Map<String, dynamic> map) {
    return LogicalViewArgs(
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      logicalViewId: (map['logicalViewId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      query: (map['query'] as String).input(),
    );
  }
}

