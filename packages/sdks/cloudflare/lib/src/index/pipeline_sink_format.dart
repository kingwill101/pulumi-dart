// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSinkFormat {
  /// Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
  final pulumi.Input<String?>? compression;
  /// Available values: "number", "string", "bytes".
  final pulumi.Input<String?>? decimalEncoding;
  final pulumi.Input<int?>? rowGroupBytes;
  /// Available values: "rfc3339", "unixMillis".
  final pulumi.Input<String?>? timestampFormat;
  /// Available values: "json", "parquet".
  final pulumi.Input<String> type;
  final pulumi.Input<bool?>? unstructured;

  /// Creates a new [PipelineSinkFormat].
  /// [compression] Available values: "uncompressed", "snappy", "gzip", "zstd", "lz4".
  /// [decimalEncoding] Available values: "number", "string", "bytes".
  /// [rowGroupBytes] Optional.
  /// [timestampFormat] Available values: "rfc3339", "unixMillis".
  /// [type] Available values: "json", "parquet".
  /// [unstructured] Optional.
  const PipelineSinkFormat({
    this.compression,
    this.decimalEncoding,
    this.rowGroupBytes,
    this.timestampFormat,
    required this.type,
    this.unstructured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression,
      'decimalEncoding': ?decimalEncoding,
      'rowGroupBytes': ?rowGroupBytes,
      'timestampFormat': ?timestampFormat,
      'type': type,
      'unstructured': ?unstructured,
    };
  }

  factory PipelineSinkFormat.fromMap(Map<String, dynamic> map) {
    return PipelineSinkFormat(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      decimalEncoding: (() { final guardedValue = map['decimalEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowGroupBytes: (() { final guardedValue = map['rowGroupBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timestampFormat: (() { final guardedValue = map['timestampFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      unstructured: (() { final guardedValue = map['unstructured']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
