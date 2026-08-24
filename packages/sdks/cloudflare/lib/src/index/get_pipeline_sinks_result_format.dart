// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinksResultFormat {
  /// Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
  final pulumi.Input<String> compression;
  /// Available values: "number", "string", "bytes".
  final pulumi.Input<String> decimalEncoding;
  final pulumi.Input<int> rowGroupBytes;
  /// Available values: "rfc3339", "unixMillis".
  final pulumi.Input<String> timestampFormat;
  /// Available values: "json", "parquet".
  final pulumi.Input<String> type;
  final pulumi.Input<bool> unstructured;

  /// Creates a new [GetPipelineSinksResultFormat].
  /// [compression] Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
  /// [decimalEncoding] Available values: "number", "string", "bytes".
  /// [rowGroupBytes] Required.
  /// [timestampFormat] Available values: "rfc3339", "unixMillis".
  /// [type] Available values: "json", "parquet".
  /// [unstructured] Required.
  const GetPipelineSinksResultFormat({
    required this.compression,
    required this.decimalEncoding,
    required this.rowGroupBytes,
    required this.timestampFormat,
    required this.type,
    required this.unstructured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
      'decimalEncoding': decimalEncoding,
      'rowGroupBytes': rowGroupBytes,
      'timestampFormat': timestampFormat,
      'type': type,
      'unstructured': unstructured,
    };
  }

  factory GetPipelineSinksResultFormat.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResultFormat(
      compression: pulumi.Input.fromValue(map['compression'] as String),
      decimalEncoding: pulumi.Input.fromValue(map['decimalEncoding'] as String),
      rowGroupBytes: pulumi.Input.fromValue((map['rowGroupBytes'] as num).toInt()),
      timestampFormat: pulumi.Input.fromValue(map['timestampFormat'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      unstructured: pulumi.Input.fromValue(map['unstructured'] as bool),
    );
  }
}
