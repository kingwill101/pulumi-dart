// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_backup_metastore_v1beta_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_backup_metastore_v1beta_args_doc}
class GetBackupMetastoreV1betaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetBackupMetastoreV1betaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetBackupMetastoreV1betaArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetBackupMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupMetastoreV1betaArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

