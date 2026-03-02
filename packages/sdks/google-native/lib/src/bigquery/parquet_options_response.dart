// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParquetOptionsResponse {
  /// [Optional] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  final pulumi.Input<bool> enableListInference;
  /// [Optional] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  final pulumi.Input<bool> enumAsString;

  /// Creates a new [ParquetOptionsResponse].
  /// [enableListInference] [Optional] Indicates whether to use schema inference specifically for Parquet LIST logical type.
  /// [enumAsString] [Optional] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
  ParquetOptionsResponse({
    required this.enableListInference,
    required this.enumAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableListInference': enableListInference,
      'enumAsString': enumAsString,
    };
  }

  factory ParquetOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ParquetOptionsResponse(
      enableListInference: (map['enableListInference'] as bool).input(),
      enumAsString: (map['enumAsString'] as bool).input(),
    );
  }
}

