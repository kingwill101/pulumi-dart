// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking {
  /// The overlap between chunks.
  final pulumi.Input<int?>? chunkOverlap;
  /// The size of the chunks.
  final pulumi.Input<int?>? chunkSize;

  /// Creates a new [AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking].
  /// [chunkOverlap] The overlap between chunks.
  /// [chunkSize] The size of the chunks.
  const AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking({
    this.chunkOverlap,
    this.chunkSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkOverlap': ?chunkOverlap,
      'chunkSize': ?chunkSize,
    };
  }

  factory AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking.fromMap(Map<String, dynamic> map) {
    return AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking(
      chunkOverlap: (() { final guardedValue = map['chunkOverlap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      chunkSize: (() { final guardedValue = map['chunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
