// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how data from an input is serialized or how data is serialized when written to an output in Parquet format.
class ParquetSerializationResponse {
  /// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Parquet'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetSerializationResponse].
  /// [type] Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  const ParquetSerializationResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ParquetSerializationResponse.fromMap(Map<String, dynamic> map) {
    return ParquetSerializationResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
