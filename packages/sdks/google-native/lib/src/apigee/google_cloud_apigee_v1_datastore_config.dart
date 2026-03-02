// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration detail for datastore
class GoogleCloudApigeeV1DatastoreConfig {
  /// Name of the Cloud Storage bucket. Required for `gcs` target_type.
  final pulumi.Input<String>? bucketName;
  /// BigQuery dataset name Required for `bigquery` target_type.
  final pulumi.Input<String>? datasetName;
  /// Path of Cloud Storage bucket Required for `gcs` target_type.
  final pulumi.Input<String>? path;
  /// GCP project in which the datastore exists
  final pulumi.Input<String> project;
  /// Prefix of BigQuery table Required for `bigquery` target_type.
  final pulumi.Input<String>? tablePrefix;

  /// Creates a new [GoogleCloudApigeeV1DatastoreConfig].
  /// [bucketName] Name of the Cloud Storage bucket. Required for `gcs` target_type.
  /// [datasetName] BigQuery dataset name Required for `bigquery` target_type.
  /// [path] Path of Cloud Storage bucket Required for `gcs` target_type.
  /// [project] GCP project in which the datastore exists
  /// [tablePrefix] Prefix of BigQuery table Required for `bigquery` target_type.
  GoogleCloudApigeeV1DatastoreConfig({
    this.bucketName,
    this.datasetName,
    this.path,
    required this.project,
    this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'datasetName': ?datasetName,
      'path': ?path,
      'project': project,
      'tablePrefix': ?tablePrefix,
    };
  }

  factory GoogleCloudApigeeV1DatastoreConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1DatastoreConfig(
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      datasetName: map['datasetName'] == null ? null : (map['datasetName'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      project: (map['project'] as String).input(),
      tablePrefix: map['tablePrefix'] == null ? null : (map['tablePrefix'] as String).input(),
    );
  }
}

