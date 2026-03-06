// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_reference_response.dart';
import 'table_reference_response.dart';

class JobConfigurationExtractResponse {
  /// [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  final pulumi.Input<String> compression;
  /// [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  final pulumi.Input<String> destinationFormat;
  /// [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  final pulumi.Input<String> destinationUri;
  /// [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  final pulumi.Input<List<String>> destinationUris;
  /// [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  final pulumi.Input<String> fieldDelimiter;
  /// [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  final pulumi.Input<bool> printHeader;
  /// A reference to the model being exported.
  final pulumi.Input<ModelReferenceResponse> sourceModel;
  /// A reference to the table being exported.
  final pulumi.Input<TableReferenceResponse> sourceTable;
  /// [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  final pulumi.Input<bool> useAvroLogicalTypes;

  /// Creates a new [JobConfigurationExtractResponse].
  /// [compression] [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  /// [destinationFormat] [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  /// [destinationUri] [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  /// [destinationUris] [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  /// [fieldDelimiter] [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  /// [printHeader] [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  /// [sourceModel] A reference to the model being exported.
  /// [sourceTable] A reference to the table being exported.
  /// [useAvroLogicalTypes] [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  const JobConfigurationExtractResponse({
    required this.compression,
    required this.destinationFormat,
    required this.destinationUri,
    required this.destinationUris,
    required this.fieldDelimiter,
    required this.printHeader,
    required this.sourceModel,
    required this.sourceTable,
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
      'destinationFormat': destinationFormat,
      'destinationUri': destinationUri,
      'destinationUris': destinationUris,
      'fieldDelimiter': fieldDelimiter,
      'printHeader': printHeader,
      'sourceModel': pulumi.Input.mapInputValue<ModelReferenceResponse, Map<String, dynamic>>(sourceModel, (value) => value.toMap()),
      'sourceTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(sourceTable, (value) => value.toMap()),
      'useAvroLogicalTypes': useAvroLogicalTypes,
    };
  }

  factory JobConfigurationExtractResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationExtractResponse(
      compression: pulumi.Input.fromValue(map['compression'] as String),
      destinationFormat: pulumi.Input.fromValue(map['destinationFormat'] as String),
      destinationUri: pulumi.Input.fromValue(map['destinationUri'] as String),
      destinationUris: pulumi.Input.fromValue((map['destinationUris'] as List).cast<String>()),
      fieldDelimiter: pulumi.Input.fromValue(map['fieldDelimiter'] as String),
      printHeader: pulumi.Input.fromValue(map['printHeader'] as bool),
      sourceModel: pulumi.Input.fromValue(ModelReferenceResponse.fromMap((map['sourceModel']! as Map).cast<String, dynamic>())),
      sourceTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['sourceTable']! as Map).cast<String, dynamic>())),
      useAvroLogicalTypes: pulumi.Input.fromValue(map['useAvroLogicalTypes'] as bool),
    );
  }
}

