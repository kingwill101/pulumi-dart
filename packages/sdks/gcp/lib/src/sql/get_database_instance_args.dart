// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_instance_get_database_instance_args_doc}
/// Arguments for getDatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_instance_get_database_instance_args_doc}
class GetDatabaseInstanceArgs {
  /// The name of the instance.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseInstanceArgs].
  /// [name] The name of the instance.
  /// [project] The ID of the project in which the resource belongs.
  const GetDatabaseInstanceArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetDatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
