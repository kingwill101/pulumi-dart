// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_catalog_table_options_storage_descriptor_serde_info.dart';

class TableExternalCatalogTableOptionsStorageDescriptor {
  /// Specifies the fully qualified class name of the
  /// InputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The
  /// maximum length is 128 characters.
  final pulumi.Input<String>? inputFormat;
  /// The physical location of the table (e.g.
  /// 'gs://spark-dataproc-data/pangea-data/case_sensitive/' or
  /// 'gs://spark-dataproc-data/pangea-data/*'). The maximum length is 2056 bytes.
  final pulumi.Input<String>? locationUri;
  /// Specifies the fully qualified class name of the
  /// OutputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The
  /// maximum length is 128 characters.
  final pulumi.Input<String>? outputFormat;
  /// Serializer and deserializer information. Structure
  /// is documented below.
  final pulumi.Input<TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo>? serdeInfo;

  /// Creates a new [TableExternalCatalogTableOptionsStorageDescriptor].
  /// [inputFormat] Specifies the fully qualified class name of the
  /// [locationUri] The physical location of the table (e.g.
  /// [outputFormat] Specifies the fully qualified class name of the
  /// [serdeInfo] Serializer and deserializer information. Structure
  TableExternalCatalogTableOptionsStorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputFormat': ?inputFormat,
      'locationUri': ?locationUri,
      'outputFormat': ?outputFormat,
      'serdeInfo': ?pulumi.Input.mapOptionalInputValue<TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo, Map<String, dynamic>>(serdeInfo, (value) => value.toMap()),
    };
  }

  factory TableExternalCatalogTableOptionsStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return TableExternalCatalogTableOptionsStorageDescriptor(
      inputFormat: map['inputFormat'] == null ? null : (map['inputFormat']! as String).input(),
      locationUri: map['locationUri'] == null ? null : (map['locationUri']! as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat']! as String).input(),
      serdeInfo: map['serdeInfo'] == null ? null : (TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo.fromMap((map['serdeInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

