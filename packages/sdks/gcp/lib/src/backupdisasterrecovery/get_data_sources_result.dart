// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_sources_data_source.dart';

/// Result data returned by getDataSources.
class GetDataSourcesResult {
  final String backupVaultId;
  /// A list of Data Sources matching the criteria.
  final List<GetDataSourcesDataSource> dataSources;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location of the GCP resource.
  final String location;
  final String? orderBy;
  final String project;

  /// Creates a new [GetDataSourcesResult].
  /// [backupVaultId] Required.
  /// [dataSources] A list of Data Sources matching the criteria.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the GCP resource.
  /// [orderBy] Optional.
  /// [project] Required.
  const GetDataSourcesResult({
    required this.backupVaultId,
    required this.dataSources,
    this.filter,
    required this.id,
    required this.location,
    this.orderBy,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': backupVaultId,
      'dataSources': pulumi.Input.encodeList<GetDataSourcesDataSource, Map<String, dynamic>>(dataSources, (value) => value.toMap()),
      'filter': ?filter,
      'id': id,
      'location': location,
      'orderBy': ?orderBy,
      'project': project,
    };
  }

  factory GetDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesResult(
      backupVaultId: map['backupVaultId'] as String,
      dataSources: pulumi.Input.decodeList<GetDataSourcesDataSource>(map['dataSources']!, (value) => GetDataSourcesDataSource.fromMap((value as Map).cast<String, dynamic>())),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: map['project'] as String,
    );
  }
}
