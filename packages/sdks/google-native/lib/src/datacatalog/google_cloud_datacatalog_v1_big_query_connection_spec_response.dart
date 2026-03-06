// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_cloud_sql_big_query_connection_spec_response.dart';

/// Specification for the BigQuery connection.
class GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse {
  /// Specification for the BigQuery connection to a Cloud SQL instance.
  final pulumi.Input<GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse> cloudSql;
  /// The type of the BigQuery connection.
  final pulumi.Input<String> connectionType;
  /// True if there are credentials attached to the BigQuery connection; false otherwise.
  final pulumi.Input<bool> hasCredential;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse].
  /// [cloudSql] Specification for the BigQuery connection to a Cloud SQL instance.
  /// [connectionType] The type of the BigQuery connection.
  /// [hasCredential] True if there are credentials attached to the BigQuery connection; false otherwise.
  const GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse({
    required this.cloudSql,
    required this.connectionType,
    required this.hasCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSql': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse, Map<String, dynamic>>(cloudSql, (value) => value.toMap()),
      'connectionType': connectionType,
      'hasCredential': hasCredential,
    };
  }

  factory GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse(
      cloudSql: pulumi.Input.fromValue(GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse.fromMap((map['cloudSql']! as Map).cast<String, dynamic>())),
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      hasCredential: pulumi.Input.fromValue(map['hasCredential'] as bool),
    );
  }
}

