// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1beta1_get_migration_job_datamigration_v1beta1_args_doc}
/// Arguments for getMigrationJob.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_get_migration_job_datamigration_v1beta1_args_doc}
class GetMigrationJobDatamigrationV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migrationJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMigrationJobDatamigrationV1beta1Args].
  /// [location] Required.
  /// [migrationJobId] Required.
  /// [project] Optional.
  GetMigrationJobDatamigrationV1beta1Args({
    required this.location,
    required this.migrationJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'migrationJobId': migrationJobId,
      'project': ?project,
    };
  }

  factory GetMigrationJobDatamigrationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobDatamigrationV1beta1Args(
      location: (map['location'] as String).input(),
      migrationJobId: (map['migrationJobId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

