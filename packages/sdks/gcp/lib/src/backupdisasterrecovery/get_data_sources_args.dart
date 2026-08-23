// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_data_sources_get_data_sources_args_doc}
/// Arguments for getDataSources.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_data_sources_get_data_sources_args_doc}
class GetDataSourcesArgs {
  /// The ID of the Backup Vault in which the Data Source belongs.
  final pulumi.Input<String> backupVaultId;
  /// An expression to filter the results. For example, data_source_gcp_resource.type="compute.googleapis.com/Instance"
  final pulumi.Input<String>? filter;
  /// The location in which the Data Source belongs.
  final pulumi.Input<String> location;
  /// An expression to order the results. For example, createTime desc
  final pulumi.Input<String>? orderBy;
  /// The Google Cloud Project in which the Data Source belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataSourcesArgs].
  /// [backupVaultId] The ID of the Backup Vault in which the Data Source belongs.
  /// [filter] An expression to filter the results. For example, data_source_gcp_resource.type="compute.googleapis.com/Instance"
  /// [location] The location in which the Data Source belongs.
  /// [orderBy] An expression to order the results. For example, createTime desc
  /// [project] The Google Cloud Project in which the Data Source belongs.
  const GetDataSourcesArgs({
    required this.backupVaultId,
    this.filter,
    required this.location,
    this.orderBy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': backupVaultId,
      'filter': ?filter,
      'location': location,
      'orderBy': ?orderBy,
      'project': ?project,
    };
  }

  factory GetDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesArgs(
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
