// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_sources_data_source.dart';

/// Result data returned by getDataSources.
class GetDataSourcesResult {
  final String? backupVaultId;
  /// A list of Data Sources matching the criteria.
  final List<GetDataSourcesDataSource>? dataSources;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location of the GCP resource.
  final String? location;
  final String? orderBy;
  final String? project;

  /// Creates a new [GetDataSourcesResult].
  /// [backupVaultId] Optional.
  /// [dataSources] A list of Data Sources matching the criteria.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the GCP resource.
  /// [orderBy] Optional.
  /// [project] Optional.
  const GetDataSourcesResult({
    this.backupVaultId,
    this.dataSources,
    this.filter,
    this.id,
    this.location,
    this.orderBy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': ?backupVaultId,
      'dataSources': ?(() { final guardedValue = dataSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSourcesDataSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter,
      'id': ?id,
      'location': ?location,
      'orderBy': ?orderBy,
      'project': ?project,
    };
  }

  factory GetDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesResult(
      backupVaultId: (() { final guardedValue = map['backupVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSourcesDataSource>(guardedValue, (value) => GetDataSourcesDataSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
