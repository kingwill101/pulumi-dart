// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_migration_job_iam_policy_args_doc}
/// Arguments for getMigrationJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_migration_job_iam_policy_args_doc}
class GetMigrationJobIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migrationJobId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMigrationJobIamPolicyArgs].
  /// [location] Required.
  /// [migrationJobId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMigrationJobIamPolicyArgs({
    required this.location,
    required this.migrationJobId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'migrationJobId': migrationJobId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetMigrationJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobIamPolicyArgs(
      location: (map['location'] as String).input(),
      migrationJobId: (map['migrationJobId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

