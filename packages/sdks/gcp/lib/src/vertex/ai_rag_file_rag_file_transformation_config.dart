// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_rag_file_transformation_config_rag_file_chunking_config.dart';

class AiRagFileRagFileTransformationConfig {
  /// The chunking config for the file.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileTransformationConfigRagFileChunkingConfig?>? ragFileChunkingConfig;

  /// Creates a new [AiRagFileRagFileTransformationConfig].
  /// [ragFileChunkingConfig] The chunking config for the file.
  const AiRagFileRagFileTransformationConfig({
    this.ragFileChunkingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ragFileChunkingConfig': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileTransformationConfigRagFileChunkingConfig, Map<String, dynamic>>(ragFileChunkingConfig, (value) => value.toMap()),
    };
  }

  factory AiRagFileRagFileTransformationConfig.fromMap(Map<String, dynamic> map) {
    return AiRagFileRagFileTransformationConfig(
      ragFileChunkingConfig: (() { final guardedValue = map['ragFileChunkingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileTransformationConfigRagFileChunkingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
