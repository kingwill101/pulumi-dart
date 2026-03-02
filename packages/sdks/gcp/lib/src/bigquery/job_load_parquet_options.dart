// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobLoadParquetOptions {
  /// If sourceFormat is set to PARQUET, indicates whether to use schema inference specifically for Parquet LIST logical type.
  final pulumi.Input<bool>? enableListInference;
  /// If sourceFormat is set to PARQUET, indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final pulumi.Input<bool>? enumAsString;

  /// Creates a new [JobLoadParquetOptions].
  /// [enableListInference] If sourceFormat is set to PARQUET, indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] If sourceFormat is set to PARQUET, indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  JobLoadParquetOptions({
    this.enableListInference,
    this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableListInference': ?enableListInference,
      'enumAsString': ?enumAsString,
    };
  }

  factory JobLoadParquetOptions.fromMap(Map<String, dynamic> map) {
    return JobLoadParquetOptions(
      enableListInference: map['enableListInference'] == null ? null : (map['enableListInference'] as bool).input(),
      enumAsString: map['enumAsString'] == null ? null : (map['enumAsString'] as bool).input(),
    );
  }
}

