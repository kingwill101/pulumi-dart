// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataset template used for dynamic dataset creation.
class DatasetTemplateResponse {
  /// If supplied, every created dataset will have its name prefixed by the provided value. The prefix and name will be separated by an underscore. i.e. _.
  final pulumi.Input<String> datasetIdPrefix;

  /// Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}. See https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information.
  final pulumi.Input<String> kmsKeyName;

  /// The geographic location where the dataset should reside. See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String> location;

  /// Creates a new [DatasetTemplateResponse].
  /// [datasetIdPrefix] If supplied, every created dataset will have its name prefixed by the provided value. The prefix and name will be separated by an underscore. i.e. _.
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}. See https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information.
  /// [location] The geographic location where the dataset should reside. See https://cloud.google.com/bigquery/docs/locations for supported locations.
  DatasetTemplateResponse({
    required this.datasetIdPrefix,
    required this.kmsKeyName,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetIdPrefix': datasetIdPrefix,
      'kmsKeyName': kmsKeyName,
      'location': location,
    };
  }

  factory DatasetTemplateResponse.fromMap(Map<String, dynamic> map) {
    return DatasetTemplateResponse(
      datasetIdPrefix: pulumi.Input.fromValue(map['datasetIdPrefix'] as String),
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
