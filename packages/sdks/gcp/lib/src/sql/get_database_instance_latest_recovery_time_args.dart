// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_instance_latest_recovery_time_get_database_instance_latest_recovery_time_args_doc}
/// Arguments for getDatabaseInstanceLatestRecoveryTime.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_instance_latest_recovery_time_get_database_instance_latest_recovery_time_args_doc}
class GetDatabaseInstanceLatestRecoveryTimeArgs {
  /// The name of the instance.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String?>? project;
  final pulumi.Input<String?>? sourceInstanceDeletionTime;

  /// Creates a new [GetDatabaseInstanceLatestRecoveryTimeArgs].
  /// [instance] The name of the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceInstanceDeletionTime] Optional.
  const GetDatabaseInstanceLatestRecoveryTimeArgs({
    required this.instance,
    this.project,
    this.sourceInstanceDeletionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'sourceInstanceDeletionTime': ?sourceInstanceDeletionTime,
    };
  }

  factory GetDatabaseInstanceLatestRecoveryTimeArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceLatestRecoveryTimeArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstanceDeletionTime: (() { final guardedValue = map['sourceInstanceDeletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
