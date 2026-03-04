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
    required this.database,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
