// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how data from an input is serialized or how data is serialized when written to an output in Parquet format.
class ParquetSerialization {
  /// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Parquet'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetSerialization].
  /// [type] Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  ParquetSerialization({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ParquetSerialization.fromMap(Map<String, dynamic> map) {
    return ParquetSerialization(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

