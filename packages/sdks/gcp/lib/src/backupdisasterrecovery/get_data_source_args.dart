// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_data_source_get_data_source_args_doc}
/// Arguments for getDataSource.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_data_source_get_data_source_args_doc}
class GetDataSourceArgs {
  /// The ID of the Backup Vault in which the Data Source belongs.
  final pulumi.Input<String> backupVaultId;
  /// The ID of the Data Source.
  final pulumi.Input<String> dataSourceId;
  /// The location in which the Data Source belongs.
  final pulumi.Input<String> location;
  /// The Google Cloud Project in which the Data Source belongs.
  final pulumi.Input<String> project;

  /// Creates a new [GetDataSourceArgs].
  /// [backupVaultId] The ID of the Backup Vault in which the Data Source belongs.
  /// [dataSourceId] The ID of the Data Source.
  /// [location] The location in which the Data Source belongs.
  /// [project] The Google Cloud Project in which the Data Source belongs.
  GetDataSourceArgs({
    required pulumi.Output<String> backupVaultId,
    required pulumi.Output<String> dataSourceId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> project,
  }) :
      backupVaultId = pulumi.Input.asInput<String>(backupVaultId),
      dataSourceId = pulumi.Input.asInput<String>(dataSourceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': backupVaultId,
      'dataSourceId': dataSourceId,
      'location': location,
      'project': project,
    };
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      backupVaultId: pulumi.Output.create<String>(map['backupVaultId'] as String),
      dataSourceId: pulumi.Output.create<String>(map['dataSourceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

