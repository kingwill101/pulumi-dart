// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MaterializedView resources.
class MaterializedViewState {
  /// Set to true to make the MaterializedView protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// The name of the instance to create the materialized view within.
  final pulumi.Input<String>? instance;
  /// The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String>? materializedViewId;
  /// The unique name of the requested materialized view. Values are of the form `projects/<project>/instances/<instance>/materializedViews/<materializedViewId>`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The materialized view's select query.
  final pulumi.Input<String>? query;

  /// Creates a new [MaterializedViewState].
  /// [deletionProtection] Set to true to make the MaterializedView protected against deletion.
  /// [instance] The name of the instance to create the materialized view within.
  /// [materializedViewId] The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [name] The unique name of the requested materialized view. Values are of the form `projects/<project>/instances/<instance>/materializedViews/<materializedViewId>`.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The materialized view's select query.
  MaterializedViewState({
    this.deletionProtection,
    this.instance,
    this.materializedViewId,
    this.name,
    this.project,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'instance': ?instance,
      'materializedViewId': ?materializedViewId,
      'name': ?name,
      'project': ?project,
      'query': ?query,
    };
  }

  factory MaterializedViewState.fromMap(Map<String, dynamic> map) {
    return MaterializedViewState(
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      materializedViewId: map['materializedViewId'] == null ? null : (map['materializedViewId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
    );
  }
}

