// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatastoreDatastoreConfig {
  /// The name of the Cloud Storage bucket. Required for `gcs` target type.
  final pulumi.Input<String?>? bucketName;
  /// The name of the BigQuery dataset. Required for `bigquery` target type.
  final pulumi.Input<String?>? datasetName;
  /// The path within the Cloud Storage bucket. Used for `gcs` target type.
  final pulumi.Input<String?>? path;
  /// The GCP project ID that the datastore target resides in.
  final pulumi.Input<String> projectId;
  /// The prefix for BigQuery table names. Used for `bigquery` target type.
  final pulumi.Input<String?>? tablePrefix;

  /// Creates a new [DatastoreDatastoreConfig].
  /// [bucketName] The name of the Cloud Storage bucket. Required for `gcs` target type.
  /// [datasetName] The name of the BigQuery dataset. Required for `bigquery` target type.
  /// [path] The path within the Cloud Storage bucket. Used for `gcs` target type.
  /// [projectId] The GCP project ID that the datastore target resides in.
  /// [tablePrefix] The prefix for BigQuery table names. Used for `bigquery` target type.
  const DatastoreDatastoreConfig({
    this.bucketName,
    this.datasetName,
    this.path,
    required this.projectId,
    this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'datasetName': ?datasetName,
      'path': ?path,
      'projectId': projectId,
      'tablePrefix': ?tablePrefix,
    };
  }

  factory DatastoreDatastoreConfig.fromMap(Map<String, dynamic> map) {
    return DatastoreDatastoreConfig(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetName: (() { final guardedValue = map['datasetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      tablePrefix: (() { final guardedValue = map['tablePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
