// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineInputPayloadFormatProtobuf {
  /// The entire schema definition is stored in this field.
  final pulumi.Input<String?>? schemaDefinition;

  /// Creates a new [PipelineInputPayloadFormatProtobuf].
  /// [schemaDefinition] The entire schema definition is stored in this field.
  const PipelineInputPayloadFormatProtobuf({
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaDefinition': ?schemaDefinition,
    };
  }

  factory PipelineInputPayloadFormatProtobuf.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormatProtobuf(
      schemaDefinition: (() { final guardedValue = map['schemaDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
