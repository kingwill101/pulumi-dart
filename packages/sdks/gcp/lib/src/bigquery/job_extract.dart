// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_extract_source_model.dart';
import 'job_extract_source_table.dart';

class JobExtract {
  /// The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.
  /// The default value is NONE. DEFLATE and SNAPPY are only supported for Avro.
  final pulumi.Input<String>? compression;

  /// The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.
  /// The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV.
  /// The default value for models is SAVED_MODEL.
  final pulumi.Input<String>? destinationFormat;

  /// A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  final pulumi.Input<List<String>> destinationUris;

  /// When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.
  /// Default is ','
  final pulumi.Input<String>? fieldDelimiter;

  /// Whether to print out a header row in the results. Default is true.
  final pulumi.Input<bool>? printHeader;

  /// A reference to the model being exported.
  /// Structure is documented below.
  final pulumi.Input<JobExtractSourceModel>? sourceModel;

  /// A reference to the table being exported.
  /// Structure is documented below.
  final pulumi.Input<JobExtractSourceTable>? sourceTable;

  /// Whether to use logical types when extracting to AVRO format.
  final pulumi.Input<bool>? useAvroLogicalTypes;

  /// Creates a new [JobExtract].
  /// [compression] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE.
  /// [destinationFormat] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for models.
  /// [destinationUris] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  /// [fieldDelimiter] When extracting data in CSV format, this defines the delimiter to use between fields in the exported data.
  /// [printHeader] Whether to print out a header row in the results. Default is true.
  /// [sourceModel] A reference to the model being exported.
  /// [sourceTable] A reference to the table being exported.
  /// [useAvroLogicalTypes] Whether to use logical types when extracting to AVRO format.
  JobExtract({
    this.compression,
    this.destinationFormat,
    required this.destinationUris,
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
      'destinationUris': destinationUris,
      'fieldDelimiter': ?fieldDelimiter,
      'printHeader': ?printHeader,
      'sourceModel':
          ?pulumi.Input.mapOptionalInputValue<
            JobExtractSourceModel,
            Map<String, dynamic>
          >(sourceModel, (value) => value.toMap()),
      'sourceTable':
          ?pulumi.Input.mapOptionalInputValue<
            JobExtractSourceTable,
            Map<String, dynamic>
          >(sourceTable, (value) => value.toMap()),
      'useAvroLogicalTypes': ?useAvroLogicalTypes,
    };
  }

  factory JobExtract.fromMap(Map<String, dynamic> map) {
    return JobExtract(
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
      destinationUris: pulumi.Input.fromValue(
        (map['destinationUris'] as List).cast<String>(),
      ),
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
          JobExtractSourceModel.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceTable: (() {
        final guardedValue = map['sourceTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobExtractSourceTable.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
