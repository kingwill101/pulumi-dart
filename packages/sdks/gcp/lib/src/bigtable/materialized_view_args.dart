// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_materialized_view_materialized_view_args_doc}
/// The set of arguments for MaterializedView.
/// {@endtemplate}
/// {@macro pulumi_bigtable_materialized_view_materialized_view_args_doc}
class MaterializedViewArgs {
  /// Set to true to make the MaterializedView protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// The name of the instance to create the materialized view within.
  final pulumi.Input<String>? instance;
  /// The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String> materializedViewId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The materialized view's select query.
  final pulumi.Input<String> query;

  /// Creates a new [MaterializedViewArgs].
  /// [deletionProtection] Set to true to make the MaterializedView protected against deletion.
  /// [instance] The name of the instance to create the materialized view within.
  /// [materializedViewId] The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The materialized view's select query.
  MaterializedViewArgs({
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? instance,
    required pulumi.Output<String> materializedViewId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> query,
  }) :
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      materializedViewId = pulumi.Input.asInput<String>(materializedViewId),
      project = pulumi.Input.asOptionalInput<String>(project),
      query = pulumi.Input.asInput<String>(query);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'instance': ?instance,
      'materializedViewId': materializedViewId,
      'project': ?project,
      'query': query,
    };
  }

  factory MaterializedViewArgs.fromMap(Map<String, dynamic> map) {
    return MaterializedViewArgs(
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      materializedViewId: pulumi.Output.create<String>(map['materializedViewId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      query: pulumi.Output.create<String>(map['query'] as String),
    );
  }
}

