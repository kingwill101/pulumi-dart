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
    required pulumi.Output<String> location,
    required pulumi.Output<String> migrationJobId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      migrationJobId = pulumi.Input.asInput<String>(migrationJobId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      migrationJobId: pulumi.Output.create<String>(map['migrationJobId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

