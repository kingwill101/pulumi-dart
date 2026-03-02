// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for the BigQuery connection to a Cloud SQL instance.
class GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse {
  /// Database name.
  final pulumi.Input<String> database;
  /// Cloud SQL instance ID in the format of `project:location:instance`.
  final pulumi.Input<String> instanceId;
  /// Type of the Cloud SQL database.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse].
  /// [database] Database name.
  /// [instanceId] Cloud SQL instance ID in the format of `project:location:instance`.
  /// [type] Type of the Cloud SQL database.
  GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse({
    required this.database,
    required this.instanceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'instanceId': instanceId,
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse(
      database: (map['database'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

