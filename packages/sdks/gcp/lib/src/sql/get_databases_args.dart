// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_databases_get_databases_args_doc}
/// Arguments for getDatabases.
/// {@endtemplate}
/// {@macro pulumi_sql_get_databases_get_databases_args_doc}
class GetDatabasesArgs {
  /// The name of the Cloud SQL database instance in which the database belongs.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the instance belongs.
  ///
  /// &gt; **Note** This datasource performs client-side sorting to provide consistent ordering of the databases.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabasesArgs].
  /// [instance] The name of the Cloud SQL database instance in which the database belongs.
  /// [project] The ID of the project in which the instance belongs.
  const GetDatabasesArgs({
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasesArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

