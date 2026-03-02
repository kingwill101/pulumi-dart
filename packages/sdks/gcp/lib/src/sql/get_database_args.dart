// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_get_database_args_doc}
class GetDatabaseArgs {
  /// The name of the Cloud SQL database instance in which the database belongs.
  final pulumi.Input<String> instance;
  /// The name of the database.
  final pulumi.Input<String> name;
  /// The ID of the project in which the instance belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseArgs].
  /// [instance] The name of the Cloud SQL database instance in which the database belongs.
  /// [name] The name of the database.
  /// [project] The ID of the project in which the instance belongs.
  GetDatabaseArgs({
    required this.instance,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'name': name,
      'project': ?project,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      instance: (map['instance'] as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

