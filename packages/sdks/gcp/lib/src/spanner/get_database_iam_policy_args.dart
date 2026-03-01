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

  factory GetDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIamPolicyArgs(
      database: pulumi.Output.create<String>(map['database'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

