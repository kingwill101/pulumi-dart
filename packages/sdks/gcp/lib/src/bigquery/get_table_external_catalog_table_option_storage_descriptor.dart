// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_external_catalog_table_option_storage_descriptor_serde_info.dart';

class GetTableExternalCatalogTableOptionStorageDescriptor {
  /// Specifies the fully qualified class name of the InputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The maximum length is 128 characters.
  final pulumi.Input<String> inputFormat;
  /// The physical location of the table (e.g. 'gs://spark-dataproc-data/pangea-data/case_sensitive/' or 'gs://spark-dataproc-data/pangea-data/*'). The maximum length is 2056 bytes.
  final pulumi.Input<String> locationUri;
  /// Specifies the fully qualified class name of the OutputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The maximum length is 128 characters.
  final pulumi.Input<String> outputFormat;
  /// Serializer and deserializer information.
  final pulumi.Input<List<GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo>> serdeInfos;

  /// Creates a new [GetTableExternalCatalogTableOptionStorageDescriptor].
  /// [inputFormat] Specifies the fully qualified class name of the InputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The maximum length is 128 characters.
  /// [locationUri] The physical location of the table (e.g. 'gs://spark-dataproc-data/pangea-data/case_sensitive/' or 'gs://spark-dataproc-data/pangea-data/*'). The maximum length is 2056 bytes.
  /// [outputFormat] Specifies the fully qualified class name of the OutputFormat (e.g. "org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The maximum length is 128 characters.
  /// [serdeInfos] Serializer and deserializer information.
  GetTableExternalCatalogTableOptionStorageDescriptor({
    required this.inputFormat,
    required this.locationUri,
    required this.outputFormat,
    required this.serdeInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputFormat': inputFormat,
      'locationUri': locationUri,
      'outputFormat': outputFormat,
      'serdeInfos': pulumi.Input.mapInputValue<List<GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo>, List<Map<String, dynamic>>>(serdeInfos, (value) => pulumi.Input.encodeList<GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTableExternalCatalogTableOptionStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return GetTableExternalCatalogTableOptionStorageDescriptor(
      inputFormat: pulumi.Input.fromValue(map['inputFormat'] as String),
      locationUri: pulumi.Input.fromValue(map['locationUri'] as String),
      outputFormat: pulumi.Input.fromValue(map['outputFormat'] as String),
      serdeInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo>(map['serdeInfos']!, (value) => GetTableExternalCatalogTableOptionStorageDescriptorSerdeInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

