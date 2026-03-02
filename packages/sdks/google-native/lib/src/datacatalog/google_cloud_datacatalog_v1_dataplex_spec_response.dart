// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_physical_schema_response.dart';

/// Common Dataplex fields.
class GoogleCloudDatacatalogV1DataplexSpecResponse {
  /// Fully qualified resource name of an asset in Dataplex, to which the underlying data source (Cloud Storage bucket or BigQuery dataset) of the entity is attached.
  final pulumi.Input<String> asset;
  /// Compression format of the data, e.g., zip, gzip etc.
  final pulumi.Input<String> compressionFormat;
  /// Format of the data.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchemaResponse> dataFormat;
  /// Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same project as the correspondingly Dataplex lake / zone / asset.
  final pulumi.Input<String> project;

  /// Creates a new [GoogleCloudDatacatalogV1DataplexSpecResponse].
  /// [asset] Fully qualified resource name of an asset in Dataplex, to which the underlying data source (Cloud Storage bucket or BigQuery dataset) of the entity is attached.
  /// [compressionFormat] Compression format of the data, e.g., zip, gzip etc.
  /// [dataFormat] Format of the data.
  /// [project] Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same project as the correspondingly Dataplex lake / zone / asset.
  GoogleCloudDatacatalogV1DataplexSpecResponse({
    required this.asset,
    required this.compressionFormat,
    required this.dataFormat,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': asset,
      'compressionFormat': compressionFormat,
      'dataFormat': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1PhysicalSchemaResponse, Map<String, dynamic>>(dataFormat, (value) => value.toMap()),
      'project': project,
    };
  }

  factory GoogleCloudDatacatalogV1DataplexSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexSpecResponse(
      asset: (map['asset'] as String).input(),
      compressionFormat: (map['compressionFormat'] as String).input(),
      dataFormat: (GoogleCloudDatacatalogV1PhysicalSchemaResponse.fromMap((map['dataFormat'] as Map).cast<String, dynamic>())).input(),
      project: (map['project'] as String).input(),
    );
  }
}

