// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_modality_config_grounding_config.dart';
import 'tool_data_store_tool_modality_config_rewriter_config.dart';
import 'tool_data_store_tool_modality_config_snippets_config.dart';
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
  /// Snippets configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigSnippetsConfig>? snippetsConfig;
  /// Summarization configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigSummarizationConfig>? summarizationConfig;

  /// Creates a new [ToolDataStoreToolModalityConfig].
  /// [groundingConfig] Grounding configuration.
  /// [modalityType] The modality type.
  /// [rewriterConfig] Rewriter configuration.
  /// [snippetsConfig] Snippets configuration.
  /// [summarizationConfig] Summarization configuration.
  const ToolDataStoreToolModalityConfig({
    this.groundingConfig,
    required this.modalityType,
    this.rewriterConfig,
    this.snippetsConfig,
    this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundingConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigGroundingConfig, Map<String, dynamic>>(groundingConfig, (value) => value.toMap()),
      'modalityType': modalityType,
      'rewriterConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigRewriterConfig, Map<String, dynamic>>(rewriterConfig, (value) => value.toMap()),
      'snippetsConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigSnippetsConfig, Map<String, dynamic>>(snippetsConfig, (value) => value.toMap()),
      'summarizationConfig': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigSummarizationConfig, Map<String, dynamic>>(summarizationConfig, (value) => value.toMap()),
    };
  }

  factory ToolDataStoreToolModalityConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfig(
      groundingConfig: (() { final guardedValue = map['groundingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolModalityConfigGroundingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modalityType: pulumi.Input.fromValue(map['modalityType'] as String),
      rewriterConfig: (() { final guardedValue = map['rewriterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolModalityConfigRewriterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snippetsConfig: (() { final guardedValue = map['snippetsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolModalityConfigSnippetsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      summarizationConfig: (() { final guardedValue = map['summarizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolModalityConfigSummarizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
