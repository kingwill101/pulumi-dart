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
  const TableExternalCatalogTableOptionsStorageDescriptor({
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
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serdeInfo: (() { final guardedValue = map['serdeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExternalCatalogTableOptionsStorageDescriptorSerdeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

