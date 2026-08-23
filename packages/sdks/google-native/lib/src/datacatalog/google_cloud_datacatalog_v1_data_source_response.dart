// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_storage_properties_response.dart';

/// Physical location of an entry.
class GoogleCloudDatacatalogV1DataSourceResponse {
  /// Full name of a resource as defined by the service. For example: `//bigquery.googleapis.com/projects/{PROJECT_ID}/locations/{LOCATION}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
  final pulumi.Input<String> resource;
  /// Service that physically stores the data.
  final pulumi.Input<String> service;
  /// Data Catalog entry name, if applicable.
  final pulumi.Input<String> sourceEntry;
  /// Detailed properties of the underlying storage.
  final pulumi.Input<GoogleCloudDatacatalogV1StoragePropertiesResponse> storageProperties;

  /// Creates a new [GoogleCloudDatacatalogV1DataSourceResponse].
  /// [resource] Full name of a resource as defined by the service. For example: `//bigquery.googleapis.com/projects/{PROJECT_ID}/locations/{LOCATION}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
  /// [service] Service that physically stores the data.
  /// [sourceEntry] Data Catalog entry name, if applicable.
  /// [storageProperties] Detailed properties of the underlying storage.
  const GoogleCloudDatacatalogV1DataSourceResponse({
    required this.resource,
    required this.service,
    required this.sourceEntry,
    required this.storageProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'service': service,
      'sourceEntry': sourceEntry,
      'storageProperties': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1StoragePropertiesResponse, Map<String, dynamic>>(storageProperties, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1DataSourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataSourceResponse(
      resource: pulumi.Input.fromValue(map['resource'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      sourceEntry: pulumi.Input.fromValue(map['sourceEntry'] as String),
      storageProperties: pulumi.Input.fromValue(GoogleCloudDatacatalogV1StoragePropertiesResponse.fromMap((map['storageProperties']! as Map).cast<String, dynamic>())),
    );
  }
}
