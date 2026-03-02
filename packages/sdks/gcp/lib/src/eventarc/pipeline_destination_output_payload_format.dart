// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_destination_output_payload_format_avro.dart';
import 'pipeline_destination_output_payload_format_protobuf.dart';

class PipelineDestinationOutputPayloadFormat {
  /// The format of an AVRO message payload.
  /// Structure is documented below.
  final pulumi.Input<PipelineDestinationOutputPayloadFormatAvro>? avro;
  /// The format of a JSON message payload.
  final pulumi.Input<Map<String, dynamic>>? json;
  /// The format of a Protobuf message payload.
  /// Structure is documented below.
  final pulumi.Input<PipelineDestinationOutputPayloadFormatProtobuf>? protobuf;

  /// Creates a new [PipelineDestinationOutputPayloadFormat].
  /// [avro] The format of an AVRO message payload.
  /// [json] The format of a JSON message payload.
  /// [protobuf] The format of a Protobuf message payload.
  PipelineDestinationOutputPayloadFormat({
    this.avro,
    this.json,
    this.protobuf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avro': ?pulumi.Input.mapOptionalInputValue<PipelineDestinationOutputPayloadFormatAvro, Map<String, dynamic>>(avro, (value) => value.toMap()),
      'json': ?json,
      'protobuf': ?pulumi.Input.mapOptionalInputValue<PipelineDestinationOutputPayloadFormatProtobuf, Map<String, dynamic>>(protobuf, (value) => value.toMap()),
    };
  }

  factory PipelineDestinationOutputPayloadFormat.fromMap(Map<String, dynamic> map) {
    return PipelineDestinationOutputPayloadFormat(
      avro: map['avro'] == null ? null : (PipelineDestinationOutputPayloadFormatAvro.fromMap((map['avro']! as Map).cast<String, dynamic>())).input(),
      json: map['json'] == null ? null : ((map['json']! as Map).cast<String, dynamic>()).input(),
      protobuf: map['protobuf'] == null ? null : (PipelineDestinationOutputPayloadFormatProtobuf.fromMap((map['protobuf']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

