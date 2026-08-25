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
  final pulumi.Input<String?>? project;

  /// Creates a new [GetDataSourceArgs].
  /// [backupVaultId] The ID of the Backup Vault in which the Data Source belongs.
  /// [dataSourceId] The ID of the Data Source.
  /// [location] The location in which the Data Source belongs.
  /// [project] The Google Cloud Project in which the Data Source belongs.
  const GetDataSourceArgs({
    required this.backupVaultId,
    required this.dataSourceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': backupVaultId,
      'dataSourceId': dataSourceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceArgs(
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
