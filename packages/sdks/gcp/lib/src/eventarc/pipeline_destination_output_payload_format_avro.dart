// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineDestinationOutputPayloadFormatAvro {
  /// The entire schema definition is stored in this field.
  final pulumi.Input<String>? schemaDefinition;

  /// Creates a new [PipelineDestinationOutputPayloadFormatAvro].
  /// [schemaDefinition] The entire schema definition is stored in this field.
  PipelineDestinationOutputPayloadFormatAvro({
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaDefinition': ?schemaDefinition,
    };
  }

  factory PipelineDestinationOutputPayloadFormatAvro.fromMap(Map<String, dynamic> map) {
    return PipelineDestinationOutputPayloadFormatAvro(
      schemaDefinition: map['schemaDefinition'] == null ? null : (map['schemaDefinition'] as String).input(),
    );
  }
}

