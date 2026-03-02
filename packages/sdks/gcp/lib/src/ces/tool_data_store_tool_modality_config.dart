// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_modality_config_grounding_config.dart';
import 'tool_data_store_tool_modality_config_rewriter_config.dart';
import 'tool_data_store_tool_modality_config_summarization_config.dart';

class ToolDataStoreToolModalityConfig {
  /// Grounding configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigGroundingConfig>? groundingConfig;
  /// The modality type.
  /// Possible values:
  /// TEXT
  /// AUDIO
  final pulumi.Input<String> modalityType;
  /// Rewriter configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigRewriterConfig>? rewriterConfig;
  /// Summarization configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigSummarizationConfig>? summarizationConfig;

  /// Creates a new [ToolDataStoreToolModalityConfig].
  /// [groundingConfig] Grounding configuration.
  /// [modalityType] The modality type.
  /// [rewriterConfig] Rewriter configuration.
  /// [summarizationConfig] Summarization configuration.
  ToolDataStoreToolModalityConfig({
    this.groundingConfig,
    required this.modalityType,
    this.rewriterConfig,
    this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundingConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigGroundingConfig, Map<String, dynamic>>(groundingConfig, (value) => value.toMap()),
      'modalityType': modalityType,
      'rewriterConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigRewriterConfig, Map<String, dynamic>>(rewriterConfig, (value) => value.toMap()),
      'summarizationConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigSummarizationConfig, Map<String, dynamic>>(summarizationConfig, (value) => value.toMap()),
    };
  }

  factory ToolDataStoreToolModalityConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfig(
      groundingConfig: map['groundingConfig'] == null ? null : (ToolDataStoreToolModalityConfigGroundingConfig.fromMap((map['groundingConfig'] as Map).cast<String, dynamic>())).input(),
      modalityType: (map['modalityType'] as String).input(),
      rewriterConfig: map['rewriterConfig'] == null ? null : (ToolDataStoreToolModalityConfigRewriterConfig.fromMap((map['rewriterConfig'] as Map).cast<String, dynamic>())).input(),
      summarizationConfig: map['summarizationConfig'] == null ? null : (ToolDataStoreToolModalityConfigSummarizationConfig.fromMap((map['summarizationConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

