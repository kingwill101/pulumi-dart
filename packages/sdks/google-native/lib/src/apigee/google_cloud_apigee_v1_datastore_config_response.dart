// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration detail for datastore
class GoogleCloudApigeeV1DatastoreConfigResponse {
  /// Name of the Cloud Storage bucket. Required for `gcs` target_type.
  final pulumi.Input<String> bucketName;
  /// BigQuery dataset name Required for `bigquery` target_type.
  final pulumi.Input<String> datasetName;
  /// Path of Cloud Storage bucket Required for `gcs` target_type.
  final pulumi.Input<String> path;
  /// GCP project in which the datastore exists
  final pulumi.Input<String> project;
  /// Prefix of BigQuery table Required for `bigquery` target_type.
  final pulumi.Input<String> tablePrefix;

  /// Creates a new [GoogleCloudApigeeV1DatastoreConfigResponse].
  /// [bucketName] Name of the Cloud Storage bucket. Required for `gcs` target_type.
  /// [datasetName] BigQuery dataset name Required for `bigquery` target_type.
  /// [path] Path of Cloud Storage bucket Required for `gcs` target_type.
  /// [project] GCP project in which the datastore exists
  /// [tablePrefix] Prefix of BigQuery table Required for `bigquery` target_type.
  GoogleCloudApigeeV1DatastoreConfigResponse({
    required this.bucketName,
    required this.datasetName,
    required this.path,
    required this.project,
    required this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'datasetName': datasetName,
      'path': path,
      'project': project,
      'tablePrefix': tablePrefix,
    };
  }

  factory GoogleCloudApigeeV1DatastoreConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1DatastoreConfigResponse(
      bucketName: (map['bucketName'] as String).input(),
      datasetName: (map['datasetName'] as String).input(),
      path: (map['path'] as String).input(),
      project: (map['project'] as String).input(),
      tablePrefix: (map['tablePrefix'] as String).input(),
    );
  }
}

