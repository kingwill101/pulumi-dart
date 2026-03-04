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
      'dataFormat':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatacatalogV1PhysicalSchema,
            Map<String, dynamic>
          >(dataFormat, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GoogleCloudDatacatalogV1DataplexSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1DataplexSpec(
      asset: (() {
        final guardedValue = map['asset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      compressionFormat: (() {
        final guardedValue = map['compressionFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataFormat: (() {
        final guardedValue = map['dataFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatacatalogV1PhysicalSchema.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
