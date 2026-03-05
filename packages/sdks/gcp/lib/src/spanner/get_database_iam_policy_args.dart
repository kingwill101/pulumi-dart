// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_get_database_iam_policy_get_database_iam_policy_args_doc}
/// Arguments for getDatabaseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_spanner_get_database_iam_policy_get_database_iam_policy_args_doc}
class GetDatabaseIamPolicyArgs {
  /// The name of the Spanner database.
  final pulumi.Input<String> database;
  /// The name of the Spanner instance the database belongs to.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseIamPolicyArgs].
  /// [database] The name of the Spanner database.
  /// [instance] The name of the Spanner instance the database belongs to.
  /// [project] The ID of the project in which the resource belongs. If it
  GetDatabaseIamPolicyArgs({
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

  factory GetDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIamPolicyArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

