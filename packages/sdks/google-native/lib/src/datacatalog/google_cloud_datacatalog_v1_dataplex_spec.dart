// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_physical_schema.dart';

/// Common Dataplex fields.
class GoogleCloudDatacatalogV1DataplexSpec {
  /// Fully qualified resource name of an asset in Dataplex, to which the underlying data source (Cloud Storage bucket or BigQuery dataset) of the entity is attached.
  final pulumi.Input<String>? asset;
  /// Compression format of the data, e.g., zip, gzip etc.
  final pulumi.Input<String>? compressionFormat;
  /// Format of the data.
  final pulumi.Input<GoogleCloudDatacatalogV1PhysicalSchema>? dataFormat;
  /// Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same project as the correspondingly Dataplex lake / zone / asset.
  final pulumi.Input<String>? project;

  /// Creates a new [GoogleCloudDatacatalogV1DataplexSpec].
  /// [asset] Fully qualified resource name of an asset in Dataplex, to which the underlying data source (Cloud Storage bucket or BigQuery dataset) of the entity is attached.
  /// [compressionFormat] Compression format of the data, e.g., zip, gzip etc.
  /// [dataFormat] Format of the data.
  /// [project] Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same project as the correspondingly Dataplex lake / zone / asset.
  GoogleCloudDatacatalogV1DataplexSpec({
    this.asset,
    this.compressionFormat,
    this.dataFormat,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': ?asset,
      'compressionFormat': ?compressionFormat,
      'dataFormat': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1PhysicalSchema, Map<String, dynamic>>(dataFormat, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GoogleCloudDatacatalogV1DataplexSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexSpec(
      asset: map['asset'] == null ? null : (map['asset']! as String).input(),
      compressionFormat: map['compressionFormat'] == null ? null : (map['compressionFormat']! as String).input(),
      dataFormat: map['dataFormat'] == null ? null : (GoogleCloudDatacatalogV1PhysicalSchema.fromMap((map['dataFormat']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

