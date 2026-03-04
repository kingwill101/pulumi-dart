// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data source for DataScan.
class GoogleCloudDataplexV1DataSourceResponse {
  /// Immutable. The Dataplex entity that represents the data source (e.g. BigQuery table) for DataScan, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  final pulumi.Input<String> entity;

  /// Immutable. The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be: BigQuery table of type "TABLE" for DataProfileScan/DataQualityScan Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  final pulumi.Input<String> resource;

  /// Creates a new [GoogleCloudDataplexV1DataSourceResponse].
  /// [entity] Immutable. The Dataplex entity that represents the data source (e.g. BigQuery table) for DataScan, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  /// [resource] Immutable. The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be: BigQuery table of type "TABLE" for DataProfileScan/DataQualityScan Format: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
  GoogleCloudDataplexV1DataSourceResponse({
    required this.entity,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entity': entity, 'resource': resource};
  }

  factory GoogleCloudDataplexV1DataSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataSourceResponse(
      entity: pulumi.Input.fromValue(map['entity'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
