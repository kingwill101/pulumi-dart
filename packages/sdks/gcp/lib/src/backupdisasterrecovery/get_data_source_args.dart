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
    required this.backupVaultId,
    required this.dataSourceId,
    required this.location,
    required this.project,
  });

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
      backupVaultId: (map['backupVaultId'] as String).input(),
      dataSourceId: (map['dataSourceId'] as String).input(),
      location: (map['location'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

