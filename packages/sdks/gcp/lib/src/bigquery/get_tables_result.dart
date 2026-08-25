// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tables_table.dart';

/// Result data returned by getTables.
class GetTablesResult {
  final String? datasetId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  /// A list of all retrieved BigQuery tables. Structure is defined below.
  final List<GetTablesTable>? tables;

  /// Creates a new [GetTablesResult].
  /// [datasetId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [tables] A list of all retrieved BigQuery tables. Structure is defined below.
  const GetTablesResult({
    this.datasetId,
    this.id,
    this.project,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'id': ?id,
      'project': ?project,
      'tables': ?(() { final guardedValue = tables; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTablesTable, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTablesTable>(guardedValue, (value) => GetTablesTable.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
