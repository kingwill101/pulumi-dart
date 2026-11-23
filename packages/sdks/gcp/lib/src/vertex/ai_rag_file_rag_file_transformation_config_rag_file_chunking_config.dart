// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_rag_file_transformation_config_rag_file_chunking_config_fixed_length_chunking.dart';

class AiRagFileRagFileTransformationConfigRagFileChunkingConfig {
  /// The fixed length chunking config.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking?>? fixedLengthChunking;

  /// Creates a new [AiRagFileRagFileTransformationConfigRagFileChunkingConfig].
  /// [fixedLengthChunking] The fixed length chunking config.
  const AiRagFileRagFileTransformationConfigRagFileChunkingConfig({
    this.fixedLengthChunking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedLengthChunking': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking, Map<String, dynamic>>(fixedLengthChunking, (value) => value.toMap()),
    };
  }

  factory AiRagFileRagFileTransformationConfigRagFileChunkingConfig.fromMap(Map<String, dynamic> map) {
    return AiRagFileRagFileTransformationConfigRagFileChunkingConfig(
      fixedLengthChunking: (() { final guardedValue = map['fixedLengthChunking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunking.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
