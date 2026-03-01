// ignore_for_file: unused_element, unnecessary_cast

import 'model_reference.dart';
import 'table_reference.dart';

class JobConfigurationExtract {
  /// [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  final String? compression;
  /// [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  final String? destinationFormat;
  /// [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  final String? destinationUri;
  /// [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  final List<String>? destinationUris;
  /// [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  final String? fieldDelimiter;
  /// [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  final bool? printHeader;
  /// A reference to the model being exported.
  final ModelReference? sourceModel;
  /// A reference to the table being exported.
  final TableReference? sourceTable;
  /// [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  final bool? useAvroLogicalTypes;

  /// Creates a new [JobConfigurationExtract].
  /// [compression] [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  /// [destinationFormat] [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  /// [destinationUri] [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  /// [destinationUris] [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  /// [fieldDelimiter] [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  /// [printHeader] [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  /// [sourceModel] A reference to the model being exported.
  /// [sourceTable] A reference to the table being exported.
  /// [useAvroLogicalTypes] [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  JobConfigurationExtract({
    this.compression,
    this.destinationFormat,
    this.destinationUri,
    this.destinationUris,
    this.fieldDelimiter,
    this.printHeader,
    this.sourceModel,
    this.sourceTable,
    this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression,
      'destinationFormat': ?destinationFormat,
      'destinationUri': ?destinationUri,
      'destinationUris': ?destinationUris,
      'fieldDelimiter': ?fieldDelimiter,
      'printHeader': ?printHeader,
      'sourceModel': ?sourceModel == null ? null : sourceModel!.toMap(),
      'sourceTable': ?sourceTable == null ? null : sourceTable!.toMap(),
      'useAvroLogicalTypes': ?useAvroLogicalTypes,
    };
  }

  factory JobConfigurationExtract.fromMap(Map<String, dynamic> map) {
    return JobConfigurationExtract(
      compression: map['compression'] == null ? null : map['compression'] as String,
      destinationFormat: map['destinationFormat'] == null ? null : map['destinationFormat'] as String,
      destinationUri: map['destinationUri'] == null ? null : map['destinationUri'] as String,
      destinationUris: map['destinationUris'] == null ? null : (map['destinationUris'] as List).cast<String>(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : map['fieldDelimiter'] as String,
      printHeader: map['printHeader'] == null ? null : map['printHeader'] as bool,
      sourceModel: map['sourceModel'] == null ? null : ModelReference.fromMap((map['sourceModel'] as Map).cast<String, dynamic>()),
      sourceTable: map['sourceTable'] == null ? null : TableReference.fromMap((map['sourceTable'] as Map).cast<String, dynamic>()),
      useAvroLogicalTypes: map['useAvroLogicalTypes'] == null ? null : map['useAvroLogicalTypes'] as bool,
    );
  }
}

