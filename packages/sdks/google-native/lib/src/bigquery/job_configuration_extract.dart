// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_reference.dart';
import 'table_reference.dart';

class JobConfigurationExtract {
  /// [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  final pulumi.Input<String>? compression;

  /// [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  final pulumi.Input<String>? destinationFormat;

  /// [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  final pulumi.Input<String>? destinationUri;

  /// [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  final pulumi.Input<List<String>>? destinationUris;

  /// [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  final pulumi.Input<String>? fieldDelimiter;

  /// [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  final pulumi.Input<bool>? printHeader;

  /// A reference to the model being exported.
  final pulumi.Input<ModelReference>? sourceModel;

  /// A reference to the table being exported.
  final pulumi.Input<TableReference>? sourceTable;

  /// [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  final pulumi.Input<bool>? useAvroLogicalTypes;

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
      'sourceModel':
          ?pulumi.Input.mapOptionalInputValue<
            ModelReference,
            Map<String, dynamic>
          >(sourceModel, (value) => value.toMap()),
      'sourceTable':
          ?pulumi.Input.mapOptionalInputValue<
            TableReference,
            Map<String, dynamic>
          >(sourceTable, (value) => value.toMap()),
      'useAvroLogicalTypes': ?useAvroLogicalTypes,
    };
  }

  factory JobConfigurationExtract.fromMap(Map<String, dynamic> map) {
    return JobConfigurationExtract(
      compression: (() {
        final guardedValue = map['compression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationFormat: (() {
        final guardedValue = map['destinationFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationUri: (() {
        final guardedValue = map['destinationUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationUris: (() {
        final guardedValue = map['destinationUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fieldDelimiter: (() {
        final guardedValue = map['fieldDelimiter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      printHeader: (() {
        final guardedValue = map['printHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceModel: (() {
        final guardedValue = map['sourceModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ModelReference.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sourceTable: (() {
        final guardedValue = map['sourceTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TableReference.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      useAvroLogicalTypes: (() {
        final guardedValue = map['useAvroLogicalTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
