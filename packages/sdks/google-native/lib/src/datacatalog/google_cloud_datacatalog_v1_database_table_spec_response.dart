// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_database_table_spec_database_view_spec_response.dart';
import 'google_cloud_datacatalog_v1_dataplex_table_spec_response.dart';

/// Specification that applies to a table resource. Valid only for entries with the `TABLE` type.
class GoogleCloudDatacatalogV1DatabaseTableSpecResponse {
  /// Spec what aplies to tables that are actually views. Not set for "real" tables.
  final pulumi.Input<GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse> databaseViewSpec;
  /// Fields specific to a Dataplex table and present only in the Dataplex table entries.
  final pulumi.Input<GoogleCloudDatacatalogV1DataplexTableSpecResponse> dataplexTable;
  /// Type of this table.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpecResponse].
  /// [databaseViewSpec] Spec what aplies to tables that are actually views. Not set for "real" tables.
  /// [dataplexTable] Fields specific to a Dataplex table and present only in the Dataplex table entries.
  /// [type] Type of this table.
  const GoogleCloudDatacatalogV1DatabaseTableSpecResponse({
    required this.databaseViewSpec,
    required this.dataplexTable,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseViewSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse, Map<String, dynamic>>(databaseViewSpec, (value) => value.toMap()),
      'dataplexTable': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1DataplexTableSpecResponse, Map<String, dynamic>>(dataplexTable, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatabaseTableSpecResponse(
      databaseViewSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse.fromMap((map['databaseViewSpec']! as Map).cast<String, dynamic>())),
      dataplexTable: pulumi.Input.fromValue(GoogleCloudDatacatalogV1DataplexTableSpecResponse.fromMap((map['dataplexTable']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

