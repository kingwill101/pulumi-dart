// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationParquetOptions {
  /// Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final pulumi.Input<bool>? enableListInference;
  /// Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final pulumi.Input<bool>? enumAsString;

  /// Creates a new [TableExternalDataConfigurationParquetOptions].
  /// [enableListInference] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  TableExternalDataConfigurationParquetOptions({
    this.enableListInference,
    this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableListInference': ?enableListInference,
      'enumAsString': ?enumAsString,
    };
  }

  factory TableExternalDataConfigurationParquetOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationParquetOptions(
      enableListInference: (() { final guardedValue = map['enableListInference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enumAsString: (() { final guardedValue = map['enumAsString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

