// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanData {
  /// The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan.
  final pulumi.Input<String>? entity;
  /// The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:
  /// Cloud Storage bucket (//storage.googleapis.com/projects/PROJECT_ID/buckets/BUCKET_ID) for DataDiscoveryScan OR BigQuery table of type "TABLE" (/bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID) for DataProfileScan/DataQualityScan.
  final pulumi.Input<String>? resource;

  /// Creates a new [DatascanData].
  /// [entity] The Dataplex entity that represents the data source(e.g. BigQuery table) for Datascan.
  /// [resource] The service-qualified full resource name of the cloud resource for a DataScan job to scan against. The field could be:
  const DatascanData({
    this.entity,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'resource': ?resource,
    };
  }

  factory DatascanData.fromMap(Map<String, dynamic> map) {
    return DatascanData(
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
