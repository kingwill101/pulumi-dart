// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineInputPayloadFormatAvro {
  /// The entire schema definition is stored in this field.
  final pulumi.Input<String>? schemaDefinition;

  /// Creates a new [PipelineInputPayloadFormatAvro].
  /// [schemaDefinition] The entire schema definition is stored in this field.
  PipelineInputPayloadFormatAvro({
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaDefinition': ?schemaDefinition,
    };
  }

  factory PipelineInputPayloadFormatAvro.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormatAvro(
      schemaDefinition: map['schemaDefinition'] == null ? null : (map['schemaDefinition']! as String).input(),
    );
  }
}

