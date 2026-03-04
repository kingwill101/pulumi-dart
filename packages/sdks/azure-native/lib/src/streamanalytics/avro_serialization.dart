// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how data from an input is serialized or how data is serialized when written to an output in Avro format.
class AvroSerialization {
  /// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Avro'.
  final pulumi.Input<String> type;

  /// Creates a new [AvroSerialization].
  /// [type] Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  AvroSerialization({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory AvroSerialization.fromMap(Map<String, dynamic> map) {
    return AvroSerialization(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
