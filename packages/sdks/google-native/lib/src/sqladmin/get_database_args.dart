// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_database_args_doc}
class GetDatabaseArgs {
  final pulumi.Input<String> database;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseArgs].
  /// [database] Required.
  /// [instance] Required.
  /// [project] Optional.
  GetDatabaseArgs({
    required pulumi.Output<String> database,
    required pulumi.Output<String> instance,
    pulumi.Output<String>? project,
  }) :
      database = pulumi.Input.asInput<String>(database),
      instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      database: pulumi.Output.create<String>(map['database'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

