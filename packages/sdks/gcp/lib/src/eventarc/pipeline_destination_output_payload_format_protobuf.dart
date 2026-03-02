// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineDestinationOutputPayloadFormatProtobuf {
  /// The entire schema definition is stored in this field.
  final pulumi.Input<String>? schemaDefinition;

  /// Creates a new [PipelineDestinationOutputPayloadFormatProtobuf].
  /// [schemaDefinition] The entire schema definition is stored in this field.
  PipelineDestinationOutputPayloadFormatProtobuf({
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaDefinition': ?schemaDefinition,
    };
  }

  factory PipelineDestinationOutputPayloadFormatProtobuf.fromMap(Map<String, dynamic> map) {
    return PipelineDestinationOutputPayloadFormatProtobuf(
      schemaDefinition: map['schemaDefinition'] == null ? null : (map['schemaDefinition'] as String).input(),
    );
  }
}

