// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableExternalDataConfigurationParquetOption {
  /// Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final pulumi.Input<bool> enableListInference;
  /// Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final pulumi.Input<bool> enumAsString;

  /// Creates a new [GetTableExternalDataConfigurationParquetOption].
  /// [enableListInference] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  GetTableExternalDataConfigurationParquetOption({
    required this.enableListInference,
    required this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableListInference': enableListInference,
      'enumAsString': enumAsString,
    };
  }

  factory GetTableExternalDataConfigurationParquetOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationParquetOption(
      enableListInference: pulumi.Input.fromValue(map['enableListInference'] as bool),
      enumAsString: pulumi.Input.fromValue(map['enumAsString'] as bool),
    );
  }
}

