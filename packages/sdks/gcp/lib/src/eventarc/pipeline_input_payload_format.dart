// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_input_payload_format_avro.dart';
import 'pipeline_input_payload_format_protobuf.dart';

class PipelineInputPayloadFormat {
  /// The format of an AVRO message payload.
  /// Structure is documented below.
  final pulumi.Input<PipelineInputPayloadFormatAvro>? avro;
  /// The format of a JSON message payload.
  final pulumi.Input<Map<String, dynamic>>? json;
  /// The format of a Protobuf message payload.
  /// Structure is documented below.
  final pulumi.Input<PipelineInputPayloadFormatProtobuf>? protobuf;

  /// Creates a new [PipelineInputPayloadFormat].
  /// [avro] The format of an AVRO message payload.
  /// [json] The format of a JSON message payload.
  /// [protobuf] The format of a Protobuf message payload.
  PipelineInputPayloadFormat({
    this.avro,
    this.json,
    this.protobuf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avro': ?pulumi.Input.mapOptionalInputValue<PipelineInputPayloadFormatAvro, Map<String, dynamic>>(avro, (value) => value.toMap()),
      'json': ?json,
      'protobuf': ?pulumi.Input.mapOptionalInputValue<PipelineInputPayloadFormatProtobuf, Map<String, dynamic>>(protobuf, (value) => value.toMap()),
    };
  }

  factory PipelineInputPayloadFormat.fromMap(Map<String, dynamic> map) {
    return PipelineInputPayloadFormat(
      avro: (() { final guardedValue = map['avro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineInputPayloadFormatAvro.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      protobuf: (() { final guardedValue = map['protobuf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineInputPayloadFormatProtobuf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

